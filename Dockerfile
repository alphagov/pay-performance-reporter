FROM node:16.8.0-alpine3.14@sha256:4ca6db20301c460ffa44b1d398788c903306f55de6ded981ab377d036c172836

WORKDIR /app
ADD . /app
RUN ["npm", "install"]
CMD ["node", "index.js"]
