FROM node:19-buster-slim

RUN apt-get update && apt-get upgrade -y && apt-get install python3 build-essential -y && nodejs -v && npm -v
WORKDIR /usr/src/app
COPY gen/srv/package.json .
COPY package-lock.json .
# Needed to get sqlite working on arm https://www.npmjs.com/package/sqlite3#source-install
RUN npm install --build-from-source
COPY gen/srv .
COPY app app/
RUN find app -name '*.cds' | xargs rm -f

EXPOSE 4004
# Not needed with node:14-buster-slim
#RUN groupadd --gid 1000 node \
#  && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
USER node
CMD [ "npm", "start" ]