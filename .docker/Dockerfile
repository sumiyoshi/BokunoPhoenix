FROM elixir:1.7

ENV APP_DIR /opt/app

ENV NODE_VERSION 8.x
ENV NPM_VERSION 6.1.0
ENV PHX_VERSION 1.4.0-rc.0

RUN curl -sL https://deb.nodesource.com/setup_${NODE_VERSION} | bash \
  && apt-get install -y nodejs

RUN npm install npm@${NPM_VERSION} -g

RUN set -x && \
  apt-get update && \
  apt-get install -y --no-install-recommends \
  mysql-client

RUN useradd -m -s /bin/bash elixir
RUN echo 'elixir:password' | chpasswd
RUN mkdir -p ${APP_DIR}

RUN mix local.hex --force
RUN mix local.rebar --force
RUN mix archive.install --force  hex phx_new ${PHX_VERSION}

WORKDIR ${APP_DIR}