FROM node:16.0.0-alpine3.12@sha256:a6ce6c279d8620f040c559540e19edaaa9f4eba1c415278314ae6753f4ceb821

WORKDIR /app
ADD . /app
RUN ["npm", "install"]
CMD ["node", "index.js"]
