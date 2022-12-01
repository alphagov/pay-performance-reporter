FROM node:19.2.0-alpine3.15@sha256:12d9c7253f232bb88a9ef6d6e974afd90e296cb8383572dbb7f28c39f828b07e

WORKDIR /app
ADD . /app
RUN ["npm", "install"]
CMD ["node", "index.js"]
