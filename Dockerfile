FROM fukamachi/sbcl:2.2.3
WORKDIR /app
COPY . /app

RUN apt-get update && apt-get install libev4
RUN set -x; \
  ros install qlot && qlot install
