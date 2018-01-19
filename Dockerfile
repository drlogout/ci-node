FROM node:alpine

RUN apk --no-cache add lftp ca-certificates openssh && \
    npm install --global gulp-cli

