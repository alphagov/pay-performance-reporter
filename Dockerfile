FROM node:14.18.1-alpine3.14@sha256:366c71eebb0da62a832729de2ffc974987b5b00ab25ed6a5bd8d707219b65de4

WORKDIR /app
ADD . /app
RUN ["npm", "install"]
CMD ["node", "index.js"]
