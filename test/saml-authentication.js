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
});

// Add Certificate for Authentication
const httpsAgent = new https.Agent({
  rejectUnauthorized: false,
  cert: fs.readFileSync(
    process.env.HTTPS_CLIENT_CERT || "/Users/gwolf/Downloads/S0001142741.pem"
  ),
  key: fs.readFileSync(
    process.env.HTTPS_CLIENT_KEY ||
      "/Users/gwolf/Downloads/S0001142741-decrypted.key"
  ),
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
    logger.debug("SAMLResponse:");
    logger.debug(SAMLResponse);
    return parameters;
  } catch (error) {
    console.log(error);
    logger.error(error);
  }
}

async function authStep3(parameters) {
  try {
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
    logger.debug("SAMLResponse:");
    logger.debug(SAMLResponse);
    return parameters;
  } catch (error) {
    logger.error(error);
  }
}

async function authStep4(parameters) {
  try {
    const response = await axios({
      method: "POST",
      url: parameters.actionURL,
      headers: {
        "content-type": "application/x-www-form-urlencoded",
        Cookie: parameters.cookie,
      },
      data: qs.stringify(parameters.postParameters),
    });
    return processResponse(response);
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

  logger.debug(parameters);
  return parameters;
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
      // the HTML Source countains an onload event where a cookie is set in the browser via Javascript
      var parseOnload = resultStep0.onload.split("cookie='")[1].split("=")[0];
      var browserCookie = parseOnload + "=" + encodeURIComponent(url);
      logger.debug("browserCookie from Step 0");
      logger.debug(browserCookie);
      logger.debug("Response body from Step 0");
      logger.debug(resultStep0.response.data);
      logger.debug("Response headers from Step 0");
      logger.debug(resultStep0.response.headers);
      logger.info("Authentication Step 1 via:");
      logger.info(resultStep0.actionURL);
      const resultStep1 = await authStep1(resultStep0);
      logger.info("Authentication Step 2 via:");
      logger.info(resultStep1.actionURL);
      const resultStep2 = await authStep2(resultStep1);
      logger.debug("Cookie: ", resultStep1.cookie);
      // The cookie from Step 1 must be passed to Step 3
      resultStep2.cookie = resultStep1.cookie;
      logger.info("Authentication Step 3 via:");
      logger.info(resultStep2.actionURL);
      const resultStep3 = await authStep3(resultStep2);
      // The cookie from Step 0 including the browserCookie plus the sap.com Cookie from Step 2 must be passed to Step 4
      let IDP_SESSION_MARKER_accounts = prepareCookie([resultStep2.cookies[2]]);
      resultStep3.cookie =
        resultStep0.cookie +
        "; " +
        IDP_SESSION_MARKER_accounts +
        "; " +
        browserCookie;
      logger.info("Authentication Step 4 via:");
      logger.info(resultStep3.actionURL);
      logger.debug("Cookie");
      logger.debug(resultStep3.cookie);
      const resultStep4 = await authStep4(resultStep3);
      logger.debug("Cookies from Step 4");
      logger.debug(resultStep4.cookies);
      logger.debug("Response headers from Step 4");
      logger.debug(resultStep4.response.headers);
    }
  } catch (error) {
    logger.error(error);
  }
}

logger.info(getFromLaunchpad("/services/odata/incidentws/?$format=json"));
