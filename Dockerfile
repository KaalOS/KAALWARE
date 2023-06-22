FROM debian:latest
RUN apt update && apt upgrade -y
RUN apt install -y curl nodejs openjdk-11-jre-headless
RUN curl -sL https://deb.nodesource.com/setup_18.x | bash -
RUN apt-get install -y nodejs
RUN cd server
RUN npm install i -g npm
WORKDIR /app/
COPY . /app/
CMD node index.js
