ARG RUBY_TAG

FROM wodby/ruby:${RUBY_TAG}

RUN gem install rails

RUN rails new . --database=postgresql
RUN rails g sidekiq:worker Hard

RUN bundle add sidekiq
RUN bundle install

COPY database.yml config/database.yml
