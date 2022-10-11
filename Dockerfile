FROM fukamachi/sbcl:latest

WORKDIR /app
COPY . /app

RUN set -x; \
  ros install clack

ENTRYPOINT ["clackup", "--address", "0.0.0.0", "--port", "3000", "app.lisp"]
