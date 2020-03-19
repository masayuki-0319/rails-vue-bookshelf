FROM ruby:2.7.0-alpine3.10
ENV LANG C.UTF-8
ENV TZ Asia/Tokyo

ENV BASE_PACKAGES="alpine-sdk build-base tzdata" \
    WEBPACKER_PACKAGES="python2 yarn nodejs-current nodejs-npm" \
    BUILD_PACKAGE="mysql-client mysql-dev" \
    FAVORITE_PACKAGE="less"

RUN apk update && \
    apk upgrade && \
    apk --update --no-cache add \
    ${BASE_PACKAGES} \
    ${WEBPACKER_PACKAGES} \
    ${BUILD_PACKAGE} \
    ${FAVORITE_PACKAGE}

WORKDIR /app

COPY Gemfile \
     Gemfile.lock \
     /app/

RUN bundle install --jobs=4

# https://github.com/bundler/bundler/issues/6154
ENV BUNDLE_GEMFILE='/app/Gemfile'

# After creating project and setting `bin/server`
RUN chmod 777 bin/server
