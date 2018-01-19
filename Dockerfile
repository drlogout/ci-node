FROM node:9.4.0-alpine

RUN apk --no-cache add \
    lftp \
    ca-certificates \
    openssh \
    yarn

RUN npm install --global \
    gulp-cli \
    grunt-cli