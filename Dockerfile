FROM node:18.8.0-alpine3.15@sha256:eccbc5d09a4f56c7fb7af5b95636bb069519ff9b3ed2b5cdaf7c4b47d92dec9e

WORKDIR /app
ADD . /app
RUN ["npm", "install"]
CMD ["node", "index.js"]
