FROM node:16.7.0-alpine3.14@sha256:ad298a16876ed84405c90864c890e81822a8706694d4ab72447bfd28d107a2f0

WORKDIR /app
ADD . /app
RUN ["npm", "install"]
CMD ["node", "index.js"]
