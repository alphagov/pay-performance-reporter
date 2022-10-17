FROM node:18.11.0-alpine3.15@sha256:5d74ba7227beb6719770fd5f2ff6ee61c2cb9efd9200e43a9781e0ba40c8271b

WORKDIR /app
ADD . /app
RUN ["npm", "install"]
CMD ["node", "index.js"]
