FROM node:16.12.0-alpine3.14@sha256:1c00ed4786872d43c5d4519bffc9e9141b07effdd0573d204fd744af05fce1d5

WORKDIR /app
ADD . /app
RUN ["npm", "install"]
CMD ["node", "index.js"]
