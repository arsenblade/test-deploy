# Базовый образ
FROM node:18-alpine

# Установка рабочей директории
WORKDIR /app

# Копирование package.json и установка зависимостей
COPY package.json ./
RUN npm install

# Копирование исходников
COPY . .

# Прослушиваем порт
EXPOSE 3000

# Команда запуска
CMD ["npm", "start"]
