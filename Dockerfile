# Use versão Alpine (imagem menor)
FROM node:20-alpine

WORKDIR /app

# Copie package.json E package-lock.json
COPY package*.json ./

# Use npm ci em vez de npm install (mais rápido e determinístico)
RUN npm ci --only=production

# Copie o resto do código
COPY . .

EXPOSE 3000

# Use CMD em vez de ENTRYPOINT para maior flexibilidade
CMD ["npm", "start"]
