FROM node:17.4.0-alpine3.14@sha256:584a81841266139f2e3afffb6fcdd52a6f1dab21dfad96d4f4c61f5be8df1d59

WORKDIR /app
ADD . /app
RUN ["npm", "install"]
CMD ["node", "index.js"]
