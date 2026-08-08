FROM n8nio/n8n:latest

ENV N8N_PORT=5678
ENV NODE_ENV=production
ENV GENERIC_TIMEZONE=America/Mexico_City

EXPOSE 5678

# Sobreescribimos ENTRYPOINT para evitar el error "sh not found"
ENTRYPOINT []
CMD ["n8n", "start"]
