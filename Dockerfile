FROM node:18.5.0-alpine3.15@sha256:5ad62659f793e0194c632cfdeeb9a5f052d241a648d2cfba56f8c05497bf5b5f

WORKDIR /app
ADD . /app
RUN ["npm", "install"]
CMD ["node", "index.js"]
