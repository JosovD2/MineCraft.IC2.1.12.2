# Используем базовый образ с Java 8 (требуется для Minecraft 1.12.2)
FROM openjdk:8-jre

# Создаем директорию для сервера
RUN mkdir /minecraft

# Копируем файлы сервера в контейнер
COPY . /minecraft

# Устанавливаем рабочую директорию
WORKDIR /minecraft

# Открываем порт для Minecraft сервера
EXPOSE 25565

# Запускаем сервер
CMD ["java", "-Xmx2G", "-Xms1G", "-jar", "forge-1.12.2-14.23.5.2860.jar", "nogui"]