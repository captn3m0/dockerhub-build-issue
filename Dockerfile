FROM ruby:alpine

WORKDIR /usr/src/app

COPY . /usr/src/app

RUN ruby /usr/src/app/test.rb

RUN bundle install