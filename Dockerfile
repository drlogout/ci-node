FROM node:9.4.0


ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y --no-install-recommends \
    apt-utils \
    apt-transport-https

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list


RUN apt-get update && apt-get install -y \
    ca-certificates \
    build-essential \
    lftp \
    yarn \
    zlib1g-dev

RUN npm install --global \
    gulp-cli \
    grunt-cli \
    bower