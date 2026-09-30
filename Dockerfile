# Imagen base oficial
FROM node:18-alpine

# Directorio de trabajo
WORKDIR /app

# Copia los archivos
COPY package*.json ./
RUN npm install
COPY . .

# Expone el puerto
EXPOSE 3000

# Comando de inicio
CMD ["node", "index.js"]