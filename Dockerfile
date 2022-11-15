FROM node:19.1.0-alpine3.15@sha256:8d87f28bd6f8a6c717e0be1defc297b22672b79820c83a7087a80548fa13d2b4

WORKDIR /app
ADD . /app
RUN ["npm", "install"]
CMD ["node", "index.js"]
