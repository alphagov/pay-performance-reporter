FROM node:16.6.2-alpine3.14@sha256:a13b194295eba881f60ea21d8a8686489e5cdf67b2212812359a986032714a6e

WORKDIR /app
ADD . /app
RUN ["npm", "install"]
CMD ["node", "index.js"]
