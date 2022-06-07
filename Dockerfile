FROM node:18.3.0-alpine3.15@sha256:7ab82182ec72ea2042e29f40fd2d7badf3023302928600803e2c158be85aee94

WORKDIR /app
ADD . /app
RUN ["npm", "install"]
CMD ["node", "index.js"]
