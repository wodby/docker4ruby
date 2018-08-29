ARG RUBY_TAG

FROM wodby/ruby:${RUBY_TAG}

RUN gem install rails
RUN rails new . --database=postgresql
RUN bundle config --global frozen 1
RUN bundle install

COPY database.yml config/database.yml
