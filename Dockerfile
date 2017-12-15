FROM perl:latest

RUN set -x \
  && cpanm Carmel
WORKDIR /root

ONBUILD COPY cpanfile* /root
ONBUILD RUN carmel install

ONBUILD COPY . /root

WORKDIR /app
