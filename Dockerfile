FROM node:lts-buster

RUN apt-get update && \
  apt-get install -y \
  ffmpeg \
  imagemagick \
  webp && \
  apt-get upgrade -y && \
  rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/SupremusJohn/EGO_BOT
WORKDIR /root/EGO_BOT

RUN npm install pm2 -g
RUN npm install --legacy-peer-deps

EXPOSE 10000

CMD ["node", "index.js"]
