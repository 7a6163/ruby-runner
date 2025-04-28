FROM ruby:3.3.7-alpine

RUN apk add --no-cache \
    bash=5.2.37-r0 \
    build-base=0.5-r3 \
    curl=8.12.1-r1 \
    file=5.46-r2 \
    git=2.47.2-r0 \
    imagemagick=7.1.1.41-r0 \
    gcompat=1.1.0-r4 \
    libffi-dev=3.4.7-r0 \
    mariadb-dev=11.4.5-r0 \
    nodejs-current=23.2.0-r1 \
    npm=10.9.1-r0 \
    openssh-client-default=9.9_p2-r0 \
    postgresql17-dev=17.4-r0 \
    tini=0.19.0-r3 \
    tzdata=2025b-r0 \
    yaml-dev=0.2.5-r2

WORKDIR /app

RUN gem install bundler:2.6.8

ENV RAILS_ENV=test
ENV RACK_ENV=test

ENTRYPOINT ["/sbin/tini", "--"]

CMD ["bash"]
