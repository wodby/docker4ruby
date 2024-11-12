ARG RUBY_TAG

FROM wodby/ruby:${RUBY_TAG}

RUN gem install rails
RUN sudo apk add --update yarn
RUN rails new . --database=postgresql
RUN bundle add sidekiq
RUN bundle install
RUN rails g sidekiq:job Hard

COPY database.yml config/database.yml

RUN sed -i '/Rails.application.configure do/a\  config.hosts << "nginx"' config/environments/development.rb;
