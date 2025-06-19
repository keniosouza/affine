# Usa imagem oficial como base
FROM ghcr.io/toeverything/affine-graphql:stable

# Cria diretórios para dados
RUN mkdir -p /root/.affine/storage /root/.affine/config

# Define variáveis de ambiente (ajustáveis via .env)
ENV DATABASE_URL=postgresql://affine:senha123@localhost:5432/affine
ENV REDIS_SERVER_HOST=localhost
ENV AFFINE_INDEXER_ENABLED=false

# Define a porta padrão
EXPOSE 3010

# Comando para iniciar a aplicação
CMD ["node", "dist/index.js"]
