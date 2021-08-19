FROM node:14.17.5-alpine3.14@sha256:0d8fdd60f68e0d83a7b23c5c1cef34093330ddd756dbef6c17474c3324007e04

WORKDIR /app
ADD . /app
RUN ["npm", "install"]
CMD ["node", "index.js"]
