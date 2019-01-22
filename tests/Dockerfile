ARG RUBY_TAG

FROM wodby/ruby:${RUBY_TAG}

RUN gem install rails

RUN rails new . --database=postgresql
RUN bundle add sidekiq
RUN bundle install
RUN rails g sidekiq:worker Hard

COPY database.yml config/database.yml
