const axios = require("axios");
const https = require("https");
const fs = require("fs");
const cheerio = require("cheerio");
const pino = require("pino");
const qs = require("qs");

axios.defaults.withCredentials = true;

var prettyPrint = false;

if (process.env.LOG_AS_TEXT !== "false") {
  prettyPrint = true;
}

const logger = pino({
  level: process.env.LOG_LEVEL || "info",
  prettyPrint: prettyPrint,
  customLevels: {
    cookies: 28,
    sentcookie: 26,
    saml: 24,
    payload: 22,
  },
});

// Add Certificate for Authentication
const httpsAgent = new https.Agent({
  rejectUnauthorized: false,
  cert: fs.readFileSync(process.env.HTTPS_CLIENT_CERT || "s-user.crt"),
  key: fs.readFileSync(process.env.HTTPS_CLIENT_KEY || "s-user-decrypted.key"),
});

async function authStep1(parameters) {
  try {
    const response = await axios({
      method: "POST",
      url: parameters.actionURL,
      headers: { "content-type": "application/x-www-form-urlencoded" },
      data: qs.stringify(parameters.postParameters),
    });
    return processResponse(response);
  } catch (error) {
    logger.error(error);
  }
}

async function authStep2(parameters) {
  try {
    const response = await axios({
      httpsAgent,
      method: "POST",
      url: parameters.actionURL,
      headers: { "content-type": "application/x-www-form-urlencoded" },
      data: qs.stringify(parameters.postParameters),
    });
    parameters = processResponse(response);
    let SAMLResponseBuffer = new Buffer.from(
      parameters.postParameters.SAMLResponse,
      "base64"
    );
    let SAMLResponse = SAMLResponseBuffer.toString("utf-8");
    logger.saml("SAMLResponse:");
    logger.saml(SAMLResponse);
    return parameters;
  } catch (error) {
    console.log(error);
    logger.error(error);
  }
}

async function authStep3(parameters) {
  try {
    logger.sentcookie(`Sent cookie step 3 to ${parameters.actionURL}:`);
    logger.sentcookie(parameters.cookie);
    const response = await axios({
      method: "POST",
      url: parameters.actionURL,
      headers: {
        "content-type": "application/x-www-form-urlencoded",
        Cookie: parameters.cookie,
      },
      data: qs.stringify(parameters.postParameters),
    });
    parameters = processResponse(response);
    let SAMLResponseBuffer = new Buffer.from(
      parameters.postParameters.SAMLResponse,
      "base64"
    );
    let SAMLResponse = SAMLResponseBuffer.toString("utf-8");
    logger.saml("SAMLResponse:");
    logger.saml(SAMLResponse);
    return parameters;
  } catch (error) {
    logger.error(error);
  }
}

async function authStep4(parameters) {
  try {
    logger.sentcookie(`Sent cookie step 4 to ${parameters.actionURL}:`);
    logger.sentcookie(parameters.cookie);
    logger.payload(`Step 4 POST body:`);
    logger.payload(qs.stringify(parameters.postParameters));
    const response = await axios({
      method: "POST",
      url: parameters.actionURL,
      headers: {
        "content-type": "application/x-www-form-urlencoded",
        Cookie: parameters.cookie,
      },
      data: qs.stringify(parameters.postParameters),
      maxRedirects: 0,
    });
    logger.payload(`Step 4 response status:`);
    logger.payload(response.status);
    console.log("Redirects");
    console.log(response.request._redirectable._redirectCount);
    return processResponse(response);
  } catch (error) {
    // a redirect is good. We need the cookies from this redirect
    if (error.response.status === 302) {
      return processResponse(error.response);
    }
    logger.error(error);
  }
}

async function authStep5(parameters) {
  try {
    logger.sentcookie(`Sent cookie step 5 to ${parameters.actionURL}:`);
    logger.sentcookie(parameters.cookie);
    const response = await axios({
      method: "GET",
      url: parameters.actionURL,
      headers: {
        Cookie: parameters.cookie,
      },
    });
    logger.payload(`Step 5 response status:`);
    logger.payload(response.status);
    return response;
  } catch (error) {
    logger.error(error);
  }
}

function prepareCookie(cookies) {
  var cookie = "";
  for (let index = 0; index < cookies.length; index++) {
    const element = cookies[index];
    const elements = element.split(";");
    if (cookie !== "") {
      cookie += "; ";
    }
    cookie += elements[0];
  }
  return cookie;
}

function processResponse(response) {
  // Read the Target URL and parameters from the HTML form
  $ = cheerio.load(response.data);
  // Read the input fields with their values
  var inputFields = $("input");
  var parameters = {
    onload: $("body").attr("onload"),
    actionURL: $("form").attr("action"),
    cookies: response.headers["set-cookie"],
    response: response,
    postParameters: {},
  };
  for (let index = 0; index < inputFields.length; index++) {
    let value = inputFields[index].attribs.value;
    parameters.postParameters[inputFields[index].attribs.name] = value;
  }
  parameters.cookie = prepareCookie(parameters.cookies);

  // logger.debug(parameters);
  return parameters;
}

function updateCookieInDefaultEnv(cookie) {
  var filename = "default-env.json";
  fs.readFile(filename, "utf-8", (err, data) => {
    if (err) {
      throw err;
    }

    // parse JSON object
    const defaultEnv = JSON.parse(data.toString());

    defaultEnv.OSS_COOKIE.cookie = cookie;

    data = JSON.stringify(defaultEnv, null, 2);

    fs.writeFile(filename, data, (err) => {
      if (err) {
        throw err;
      }
      console.log("JSON data is saved.");
    });
  });
}

async function getFromLaunchpad(path) {
  try {
    var url = `https://launchpad.support.sap.com${path}`;
    logger.info("Starting request to:");
    logger.info(url);
    const response = await axios({
      method: "GET",
      url,
    });
    // The Header:
    // 'com.sap.cloud.security.login': 'login-request'
    // indicates that we need to authenticate
    if (response.headers["com.sap.cloud.security.login"] === "login-request") {
      resultStep0 = processResponse(response);
      logger.cookies("Cookies from Step 0");
      logger.cookies(resultStep0.cookies);
      logger.info("Authentication Step 1 via:");
      logger.info(resultStep0.actionURL);
      const resultStep1 = await authStep1(resultStep0);
      logger.cookies("Cookies from Step 1");
      logger.cookies(resultStep1.cookies);
      logger.info("Authentication Step 2 via:");
      logger.info(resultStep1.actionURL);
      const resultStep2 = await authStep2(resultStep1);
      logger.cookies("Cookies from Step 2");
      logger.cookies(resultStep2.cookies);
      // The cookie from Step 1 must be passed to Step 3
      resultStep2.cookie = resultStep1.cookie;
      logger.info("Authentication Step 3 via:");
      logger.info(resultStep2.actionURL);
      const resultStep3 = await authStep3(resultStep2);
      logger.cookies("Cookies from Step 3");
      logger.cookies(resultStep3.cookies);
      // The cookie from Step 0 including the browserCookie plus the sap.com Cookie from Step 2 must be passed to Step 4
      let IDP_SESSION_MARKER_accounts = prepareCookie([resultStep2.cookies[2]]);
      resultStep3.cookie =
        resultStep0.cookie + "; " + IDP_SESSION_MARKER_accounts;
      logger.info("Authentication Step 4 via:");
      logger.info(resultStep3.actionURL);
      const resultStep4 = await authStep4(resultStep3);
      logger.cookies("Cookies from Step 4");
      logger.cookies(resultStep4.cookies);
      // The Cookies from Step 4 must be added to the ones of Step 3
      resultStep4.cookie += "; " + resultStep3.cookie;
      resultStep4.actionURL = url;
      const resultStep5 = await authStep5(resultStep4);
      logger.cookies("Cookies from Step 5");
      logger.cookies(resultStep5.cookies);
      logger.payload("Response from Step 5");
      logger.payload(resultStep5.data);
      updateCookieInDefaultEnv(resultStep4.cookie);
    }
  } catch (error) {
    logger.error(error);
  }
}

logger.info(getFromLaunchpad("/services/odata/incidentws/?$format=json"));
