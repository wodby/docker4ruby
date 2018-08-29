ARG RUBY_TAG

FROM wodby/ruby:${RUBY_TAG}

# Throw errors if Gemfile has been modified since Gemfile.lock
RUN bundle config --global frozen 1

COPY Gemfile Gemfile.lock ./

# Install additional dev packages for native extensions (only for -dev ruby tag)
#RUN sudo apk add --update missing-package

RUN bundle install

# By default we start Puma HTTP server, modify to change it.
#CMD ["puma", "-C", "/usr/local/etc/puma.rb"]

# Use unicorn instead
#CMD ["/etc/init.d/unicorn"]