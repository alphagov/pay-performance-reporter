FROM node:18.4.0-alpine3.15@sha256:f55132b48261c7ca0394d71c204eb419db0a0209be341762390693434e4bdd92

WORKDIR /app
ADD . /app
RUN ["npm", "install"]
CMD ["node", "index.js"]
