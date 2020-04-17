FROM ruby:2.6.6
LABEL maintainer="alex.kochurov@gmail.com"

RUN apt-get update -yqq && apt-get install -yqq --no-install-recommends \
  nodejs

COPY Gemfile* /usr/src/app/
WORKDIR /usr/src/app
RUN bundle install --jobs=4 --retry=3

COPY . /usr/src/app/

RUN useradd -ms /bin/bash alexey

ENTRYPOINT ["./docker-entrypoint.sh"]
CMD ["bin/rails", "s", "-b", "0.0.0.0"]
