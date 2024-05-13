FROM 381491939189.dkr.ecr.ap-south-1.amazonaws.com/node
RUN mkdir -p /app
WORKDIR /app
COPY ./package.json ./package-lock.json ./
RUN npm install
COPY ./ ./
EXPOSE 3000
ENTRYPOINT ["node", "index.js"]
