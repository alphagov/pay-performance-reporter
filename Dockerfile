FROM node:16.6.1-alpine3.12@sha256:c8456c046a96796e8b09173bdaf51f134ff5bdd6bab411efa14b3751b6e7fd82

WORKDIR /app
ADD . /app
RUN ["npm", "install"]
CMD ["node", "index.js"]
