FROM node:20-alpine

RUN apk add --no-cache python3 make g++

RUN npm install -g n8n

ENV N8N_PORT=5678
ENV NODE_ENV=production

EXPOSE 5678

CMD ["n8n", "start"]
