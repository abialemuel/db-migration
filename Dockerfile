FROM ruby:3.1.2

WORKDIR /usr/app/src

ADD . /usr/app/src
RUN bundle install

CMD bundle exec rake db:migrate