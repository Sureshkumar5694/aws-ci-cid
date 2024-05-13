FROM public.ecr.aws/docker/library/node:22-slim
WORKDIR /app
COPY . .
RUN npm ci --only=production
COPY ./ ./
EXPOSE 3000
ENTRYPOINT ["node", "index.js"]
