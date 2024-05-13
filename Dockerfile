FROM node:18.16.0-alpine3.17
RUN mkdir -p /app
WORKDIR /app
COPY ./package.json ./package-lock.json ./
RUN npm install
COPY ./ ./
EXPOSE 3000
ENTRYPOINT ["node", "index.js"]
