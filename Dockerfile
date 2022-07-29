FROM node:18.7.0-alpine3.15@sha256:633d16172e5184d1dd01a041581c2759ae3d59f0dd192bd322890bcc765c28cb

WORKDIR /app
ADD . /app
RUN ["npm", "install"]
CMD ["node", "index.js"]
