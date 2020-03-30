FROM ruby:2.2

# Set a working directory, I am partial to /src but choose whatever you like
WORKDIR /src

# Copy gemfile to pre-install gems (Allows us to quickly test if all is working well)
COPY Gemfile /src/Gemfile

# Install any library dependencies here like so after which you should
# install/update bundler then install gems from Gemfile
RUN apt-get -y update \
    && apt-get -y install curl \
                       git \
                       wget \
                       libpq-dev \
                       node \
                       libpq-dev \
                       vim \
    && rm -rf /var/lib/apt/lists \
    && gem install bundler -v 1.7.9 \
    && bundle install 

# Copy source files to image for flexibility later on, for example if you would like to push a bundled image to a registry or run it without compose
COPY . /src

# Define /src as a volume
VOLUME /src

# Use expose to show which port should be exposed to the host or other containers
EXPOSE 3000

# Run rails s in the foreground on container launch
CMD ["rails", "s", "-b 0.0.0.0", "-p 3000 "]