FROM node:16.3.0-alpine3.12@sha256:bb904644bceb0524e8ab820afb48254f03fb1f961431ed811083d9bdca86d16d

WORKDIR /app
ADD . /app
RUN ["npm", "install"]
CMD ["node", "index.js"]
