FROM node:19.0.0-alpine3.15@sha256:8d7a169f79233ea74b68f84444ac1213389a471a7464e944b30a19a0296fe944

WORKDIR /app
ADD . /app
RUN ["npm", "install"]
CMD ["node", "index.js"]
