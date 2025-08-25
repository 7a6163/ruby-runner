FROM ruby:3.3.8-alpine

RUN apk add --no-cache \
    bash=5.2.37-r0 \
    build-base=0.5-r3 \
    curl=8.14.1-r1 \
    file=5.46-r2 \
    git=2.49.1-r0 \
    imagemagick=7.1.2.0-r0 \
    imagemagick-dev=7.1.2.0-r0 \
    gcompat=1.1.0-r4 \
    libc6-compat=1.2.5-r10 \
    libffi-dev=3.4.8-r0 \
    mariadb-dev=11.4.5-r2 \
    nodejs-current=23.11.0-r0 \
    npm=11.3.0-r1 \
    openssh-client-default=10.0_p1-r7 \
    postgresql17-dev=17.6-r0 \
    tini=0.19.0-r3 \
    tzdata=2025b-r0 \
    yaml-dev=0.2.5-r2

WORKDIR /app

RUN gem install bundler:2.6.8

ENV RAILS_ENV=test
ENV RACK_ENV=test

ENTRYPOINT ["/sbin/tini", "--"]

CMD ["bash"]
