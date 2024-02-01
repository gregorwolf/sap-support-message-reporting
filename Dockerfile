FROM node:20 AS build-env
WORKDIR /app
COPY gen/srv/package.json .
COPY package-lock.json .

RUN npm ci --only=production

COPY gen/srv .
COPY app app/
RUN find app -name '*.cds' | xargs rm -f

FROM gcr.io/distroless/nodejs20-debian12
COPY --from=build-env /app /app
WORKDIR /app
EXPOSE 4004
ENV NODE_ENV=development
CMD ["node_modules/.bin/cds", "run", "--with-mocks", "--in-memory"]
