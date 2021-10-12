FROM node:16.11.0-alpine3.14@sha256:7fa5235f5ccbda27ea38a3f262e47660ae86142c8433f6ba2fb8c87b7269fe36

WORKDIR /app
ADD . /app
RUN ["npm", "install"]
CMD ["node", "index.js"]
