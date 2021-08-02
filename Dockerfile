FROM node:16.6.0-alpine3.12@sha256:246d6eb16b2a9ae997b75096d49ebb1c3ebab3b5fea56c235a65b022cfb03e8a

WORKDIR /app
ADD . /app
RUN ["npm", "install"]
CMD ["node", "index.js"]
