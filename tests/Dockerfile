ARG RUBY_TAG

FROM wodby/ruby:${RUBY_TAG}

RUN if [[ "${RUBY_VERSION}" =~ ^2.6. ]]; then \
      gem install rails -v 6;  \
    else  \
      gem install rails;  \
    fi

RUN sudo apk add --update yarn
RUN rails new . --database=postgresql
RUN bundle add sidekiq
RUN bundle install
RUN rails g sidekiq:worker Hard

COPY database.yml config/database.yml

RUN sed -i '/Rails.application.configure do/a\  config.hosts << "nginx"' config/environments/development.rb;
