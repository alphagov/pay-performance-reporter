FROM node:17.6.0-alpine3.14@sha256:77f3c83115c508a5619169a1bba67d5cc49becece865d383eed603710130af40

WORKDIR /app
ADD . /app
RUN ["npm", "install"]
CMD ["node", "index.js"]
