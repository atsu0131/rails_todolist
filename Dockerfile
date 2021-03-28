FROM ruby:2.6.5
ENV LANG C.UTF-8
ENV TZ=Asia/Tokyo

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - \
    && echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list \
    && apt-get update -qq \
    && apt-get install -y nodejs yarn mariadb-client

ENV APP_HOME /var/src/app
RUN mkdir -p $APP_HOME
WORKDIR $APP_HOME
ADD Gemfile $APP_HOME/Gemfile
ADD Gemfile.lock $APP_HOME/Gemfile.lock
ENV APT_KEY_DONT_WARN_ON_DANGEROUS_USAGE = DontWarn
ENV BUNDLE_DISABLE_SHARED_GEMS 1
RUN bundle install
