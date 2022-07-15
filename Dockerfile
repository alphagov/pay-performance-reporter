FROM node:18.6.0-alpine3.15@sha256:4203fefa49002c75075c1fc389a0655cc7cad21ad4e9d746f3f6f30deb2c950d

WORKDIR /app
ADD . /app
RUN ["npm", "install"]
CMD ["node", "index.js"]
