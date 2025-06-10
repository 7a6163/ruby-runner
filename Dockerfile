FROM ruby:3.3.8-alpine

RUN apk add --no-cache \
    bash \
    build-base \
    curl \
    file \
    git \
    imagemagick \
    imagemagick-dev \
    gcompat \
    libffi-dev \
    mariadb-dev \
    nodejs-current \
    npm \
    openssh-client-default \
    postgresql17-dev \
    tini \
    tzdata \
    yaml-dev \
    zlib-dev \
    cmake

WORKDIR /app

RUN gem install bundler:2.6.8

ENV RAILS_ENV=test
ENV RACK_ENV=test

ENTRYPOINT ["/sbin/tini", "--"]

CMD ["bash"]
