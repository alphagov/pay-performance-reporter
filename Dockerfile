FROM node:16.9.1-alpine3.14@sha256:62f442b1f2be995cb7352df38a77f936cbedf02ca3213f0cf8f61facf74d0d68

WORKDIR /app
ADD . /app
RUN ["npm", "install"]
CMD ["node", "index.js"]
