FROM ruby:2.7.2

RUN apt-get clean all && apt-get update -q && apt-get install -y build-essential \
    curl gnupg2 apt-utils default-libmysqlclient-dev git libcurl3-dev cmake \
    libssl-dev pkg-config openssl file nodejs yarn

WORKDIR /rails-app

COPY Gemfile /rails-app/Gemfile
COPY Gemfile.lock /rails-app/Gemfile.lock
RUN bundle install
RUN bundle binstubs --all

COPY . /rails-app

COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh

ENTRYPOINT ["entrypoint.sh"]