FROM node:18-alpine

WORKDIR /app

# Copiar dependencias primero (mejor cache de Docker)
COPY package*.json ./
RUN npm install --omit=dev

# Copiar el código
COPY server.js .

EXPOSE 8081

CMD ["node", "server.js"]