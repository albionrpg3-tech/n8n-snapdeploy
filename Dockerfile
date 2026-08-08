FROM n8nio/n8n:latest

# Variables de entorno por defecto
ENV N8N_PORT=5678

# Exponer el puerto que usará n8n
EXPOSE 5678

# Comando para iniciar n8n
CMD ["n8n", "start"]
