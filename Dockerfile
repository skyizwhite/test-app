FROM fukamachi/sbcl:latest

WORKDIR /app
COPY . /app

RUN set -x; \
  ros install clack
