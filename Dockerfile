FROM node:20-alpine

# Instalar herramientas de compilación necesarias para las dependencias de n8n
RUN apk add --no-cache python3 make g++

# Instalar n8n globalmente en el contenedor
RUN npm install -g n8n

# Variables de entorno por defecto
ENV N8N_PORT=5678
ENV NODE_ENV=production

# Exponer el puerto que usará la plataforma
EXPOSE 5678

# Comando de inicio estándar
CMD ["n8n", "start"]
Imagen personalizada para solucionar error sh
