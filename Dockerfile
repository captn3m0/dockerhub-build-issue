FROM ruby:alpine

WORKDIR /usr/src/app

COPY . /usr/src/app

RUN bundle install