FROM node:16.5.0-alpine3.12@sha256:a6757645ab4b449ac48ca596306fa48852f68d2cdde9ba446e4535bf5b29dfbb

WORKDIR /app
ADD . /app
RUN ["npm", "install"]
CMD ["node", "index.js"]
