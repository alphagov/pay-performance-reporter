FROM node:19.0.1-alpine3.15@sha256:6a40d2c98be365709631522c38563373297c68cd8ebbfeefc3540e6c2cd682e3

WORKDIR /app
ADD . /app
RUN ["npm", "install"]
CMD ["node", "index.js"]
