# syntax=docker/dockerfile:1
FROM ruby:latest

RUN apt-get update -qq && apt-get install -y nodejs postgresql-client
WORKDIR /projects_app
COPY Gemfile /projects_app/Gemfile
COPY Gemfile.lock /projects_app/Gemfile.lock
RUN bundle install

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

# Configure the main process to run when running the image
CMD ["./bin/dev"]