FROM 381491939189.dkr.ecr.ap-south-1.amazonaws.com/node:latest
WORKDIR /app
COPY . .
RUN npm ci --only=production
COPY ./ ./
EXPOSE 3000
ENTRYPOINT ["node", "index.js"]
