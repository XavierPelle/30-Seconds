FROM ruby:3
RUN apt-get update -qq && apt-get install -y nodejs npm postgresql-client vim
RUN npm install -g yarn
RUN gem update --system

# use a global path instead of vendor
ENV GEM_HOME="/usr/local/bundle"
ENV BUNDLE_PATH="$GEM_HOME"
ENV BUNDLE_SILENCE_ROOT_WARNING=1
ENV BUNDLE_APP_CONFIG="$GEM_HOME"
ENV PATH="$GEM_HOME/bin:$BUNDLE_PATH/gems/bin:${PATH}"

# make 'docker logs' work
ENV RAILS_LOG_TO_STDOUT=true

# copy the source
WORKDIR /app
COPY . /app
RUN rm -f tmp/pids/server.pid
RUN bundle install

# build and start
CMD ["bin/prod"]
