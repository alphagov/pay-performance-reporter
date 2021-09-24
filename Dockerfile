FROM node:16.10.0-alpine3.14@sha256:8924fe15ceecfbdd5de1dd16b2a17ad53376e828f28c0bfa3d9b87a4e3cf1e61

WORKDIR /app
ADD . /app
RUN ["npm", "install"]
CMD ["node", "index.js"]
