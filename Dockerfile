FROM node:16.6.0-alpine3.14@sha256:78cfbade13b9bed05f652e43d2928940dcca79d729682c5c1a046f5bf5a1158a

WORKDIR /app
ADD . /app
RUN ["npm", "install"]
CMD ["node", "index.js"]
