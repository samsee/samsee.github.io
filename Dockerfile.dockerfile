FROM ruby:3.1

EXPOSE 4000

WORKDIR /app

COPY Gemfile ./

RUN bundle install

COPY . .

ENTRYPOINT ["jekyll", "serve", "-H", "0.0.0.0"]