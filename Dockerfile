FROM node:16.11.1-alpine3.14@sha256:de6a0e968273c5290f790bd8ef4ae300eaab372bbeec17e4849481328f1f2c17

WORKDIR /app
ADD . /app
RUN ["npm", "install"]
CMD ["node", "index.js"]
