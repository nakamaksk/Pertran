FROM ruby:3.1.1

RUN gem install bundler -v 2.3.9

WORKDIR /usr/src/app

COPY Gemfile Gemfile.lock ./
RUN bundle install

COPY . .

CMD ["./bin/rails", "server", "-b", "0.0.0.0"]