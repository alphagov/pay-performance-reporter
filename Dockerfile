FROM node:16.2.0-alpine3.12@sha256:c22e849eca59e57dbc78e9f11e3417888d7f1045cc62051a12e1b0d67b3f5675

WORKDIR /app
ADD . /app
RUN ["npm", "install"]
CMD ["node", "index.js"]
