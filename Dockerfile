FROM fukamachi/qlot:latest

WORKDIR /app
COPY . /app

RUN apt-get update && apt-get install -y gcc libev4
RUN qlot install

ENV PATH $PATH:/app/.qlot/bin
