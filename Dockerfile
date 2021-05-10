FROM node:16.1.0-alpine3.12@sha256:d27290125cf1571f79e2285279e981d8f7eef8b0ac7543453e2786adb8c3c4fd

WORKDIR /app
ADD . /app
RUN ["npm", "install"]
CMD ["node", "index.js"]
