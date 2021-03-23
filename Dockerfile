FROM node:lts-alpine

WORKDIR /app

COPY . /app
RUN npm install && \
    npm build
ENTRYPOINT ["ash", "--"]

CMD ["npm", "run", "dev"]