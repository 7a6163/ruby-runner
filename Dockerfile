FROM ruby:2.7.8-alpine

RUN apk add --no-cache \
    bash=5.1.16-r2 \
    build-base=0.5-r3 \
    curl=8.5.0-r0 \
    ffmpeg=5.0.3-r0 \
    file=5.41-r0 \
    git=2.36.6-r0 \
    imagemagick=7.1.0.50-r0 \
    imagemagick-dev=7.1.0.50-r0 \
    libc6-compat=1.2.3-r4 \
    libffi-dev=3.4.2-r1 \
    mariadb-dev=10.6.16-r0 \
    nodejs-current=18.9.1-r0 \
    npm=8.10.0-r0 \
    openssh-client=9.0_p1-r5 \
    postgresql12-dev=12.19-r0 \
    poppler-utils=22.05.0-r0 \
    tini=0.19.0-r0 \
    tzdata=2024a-r0

WORKDIR /app

RUN gem install bundler:2.4.22
RUN ln -s /usr/bin/ffmpeg /usr/local/bin/ffmpeg

ENV RAILS_ENV=test
ENV RACK_ENV=test

ENTRYPOINT ["/sbin/tini", "--"]

CMD ["bash"]
