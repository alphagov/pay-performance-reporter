FROM node:16.9.0-alpine3.14@sha256:084a0a6b2b00bcd1584eb2445f2d85d58ad8bf63d426c906c14ff5d6c430421c

WORKDIR /app
ADD . /app
RUN ["npm", "install"]
CMD ["node", "index.js"]
