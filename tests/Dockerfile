ARG RUBY_TAG

FROM wodby/ruby:${RUBY_TAG}

# Rails 6 requries ruby >= 2.5
RUN if [[ "${RUBY_VERSION:0:3}" == "2.4" ]]; then gem install sprockets -v 3.7.2; gem install rails -v 5; else gem install rails; fi

RUN sudo apk add --update yarn
RUN rails new . --database=postgresql
RUN bundle add sidekiq
RUN bundle install
RUN rails g sidekiq:worker Hard

COPY database.yml config/database.yml

RUN if rails version | grep -q "Rails 6."; then \
        sed -i '/Rails.application.configure do/a\  config.hosts << "nginx"' config/environments/development.rb; \
    fi
