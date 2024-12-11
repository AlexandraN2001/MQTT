FROM ruby:3.0
WORKDIR /app
COPY Gemfile* ./
RUN bundle install
COPY . .
EXPOSE 3000
CMD ["ruby", "mqtt_hello_world.rb"]
