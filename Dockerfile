FROM ubuntu:latest

RUN apt-get update && apt-get install -y cowsay fortune bash curl

WORKDIR /app

COPY wisecow.sh /app/wisecow.sh

RUN chmod +x /app/wisecow.sh

EXPOSE 4499

CMD ["./wisecow.sh"]
