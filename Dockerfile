FROM node:17.8.0-alpine3.15@sha256:e4a152d1564f2e89d5fa46d74b9f5a050a601322aa10bc405a32faaf1085c5f0

WORKDIR /app
ADD . /app
RUN ["npm", "install"]
CMD ["node", "index.js"]
