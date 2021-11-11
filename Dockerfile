FROM node:17.1.0-alpine3.14@sha256:707d4ffcaafe2bcc9f279fcd40591e0f6eb997be7f1f886796da2c17af871124

WORKDIR /app
ADD . /app
RUN ["npm", "install"]
CMD ["node", "index.js"]
