FROM node:16.6.1-alpine3.14@sha256:612a97525375cfd1bbbecc2c5a5758bac6d36d92d2a8cb7d9503e3085df81098

WORKDIR /app
ADD . /app
RUN ["npm", "install"]
CMD ["node", "index.js"]
