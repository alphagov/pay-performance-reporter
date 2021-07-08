FROM node:16.4.2-alpine3.12@sha256:ac2acb0058678a50ac166f1b91830421ea78e4a5f6e9425b70b97fb23460236a

WORKDIR /app
ADD . /app
RUN ["npm", "install"]
CMD ["node", "index.js"]
