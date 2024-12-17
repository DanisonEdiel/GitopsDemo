# 1. Etapa de construcción
FROM node:20 AS build-stage

# Establece el directorio de trabajo
WORKDIR /app

# Copia package.json y package-lock.json para instalar dependencias
COPY package*.json ./

# Instala las dependencias
RUN npm install

# Copia el resto del proyecto al contenedor
COPY . .

# Construye la aplicación para producción
RUN npm run build

# 2. Etapa de producción
FROM nginx:stable-alpine AS production-stage

# Copia los archivos construidos a la carpeta pública de NGINX
COPY --from=build-stage /app/dist /usr/share/nginx/html

# Expone el puerto 80
EXPOSE 80

# Inicia NGINX
CMD ["nginx", "-g", "daemon off;"]
