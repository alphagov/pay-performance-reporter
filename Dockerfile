FROM node:17.7.2-alpine3.15@sha256:1ef397a038d809785a1f787de87fbb496d10ee1b0565068289da1c5cac0d1fe4

WORKDIR /app
ADD . /app
RUN ["npm", "install"]
CMD ["node", "index.js"]
