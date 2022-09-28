FROM node:18.9.1-alpine3.15@sha256:bb30b16188798f57d6e751a7f986c602942ec789f6f66f00b69e6d4ee0324a5c

WORKDIR /app
ADD . /app
RUN ["npm", "install"]
CMD ["node", "index.js"]
