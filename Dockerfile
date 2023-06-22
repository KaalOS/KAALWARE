FROM debian:latest
RUN apt update && apt upgrade -y
RUN apt install -y curl default-jre
RUN curl -sL https://deb.nodesource.com/setup_18.x | bash -
RUN apt-get install -y nodejs
RUN npm install i -g npm
WORKDIR /app/
COPY . /app/
CMD node server.js
