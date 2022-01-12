FROM node:17.3.1-alpine3.14@sha256:281e1e120c91e109b8c8d804af5872dad3edc871e7fa3bed912ad07cb9f94709

WORKDIR /app
ADD . /app
RUN ["npm", "install"]
CMD ["node", "index.js"]
