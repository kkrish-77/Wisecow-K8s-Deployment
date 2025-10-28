FROM alpine:3.19

RUN apk add --no-cache bash fortune-mod cowsay curl

WORKDIR /app

COPY wisecow.sh /app/wisecow.sh

RUN chmod +x /app/wisecow.sh
