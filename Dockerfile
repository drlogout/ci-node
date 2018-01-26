FROM node:9.4.0-alpine

RUN apk --no-cache add \
    ca-certificates \
    g++ \
    gcc \
    git \
    libjpeg-turbo-utils \
    lftp \
    make \
    openssh \
    python2 \
    yarn \
    zlib-dev && \
    npm install --global \
    gulp-cli \
    grunt-cli \
    bower