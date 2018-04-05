FROM ruby:2.3-slim
# install dependencies
RUN apt-get update && apt-get install -qq -y --no-install-recommends \
      build-essential nodejs libpq-dev
# set path
ENV INSTALL_PATH /centralpizza
# create repository
RUN mkdir -p $INSTALL_PATH
# set path with principal directory
WORKDIR $INSTALL_PATH
# copy gem inside the container
COPY Gemfile ./
# set path for gems
ENV BUNDLE_PATH /box
# copy code inside the container
COPY . .