FROM node:17.5.0-alpine3.14@sha256:b3f5fbd3de7715abed17e926d6498730d3c51e7d269da58cd44f0c96da3a774d

WORKDIR /app
ADD . /app
RUN ["npm", "install"]
CMD ["node", "index.js"]
