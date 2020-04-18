FROM node:13.13.0

#RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
#RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | \
#  tee /etc/apt/sources.list.d/yarn.list

RUN apt-get update -yqq && apt-get install -yqq --no-install-recommends \
  libpng-dev

COPY . /usr/src/app/
WORKDIR /usr/src/app

#RUN yarn install

#CMD ["npm", "run", "dev"]
CMD echo "Placeholder"
