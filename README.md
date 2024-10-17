# Лабораторная работа 2: VCS, CI

## Описание

Этот проект создает Docker-образ для разработки приложения с использованием библиотеки OpenCV. Приложение находит лица на фотографии и печатает результат в stdout.

## Установка

1. Клонируйте репозиторий:
   ```sh
   git clone https://github.com/Juan724r/otrpo_lab_2.git

2. Перейдите в директорию проекта:
   cd lab_2

3. Соберите Docker-образ:
   docker build -t juan724r/lab_2:latest .

5. Запустите Docker-контейнер:
   docker run -v $(pwd):/lab_2 your_dockerhub_username/your_image_name:latest


Приложение принимает путь до файла в качестве первого аргумента. Если аргумент не указан, используется файл image.jpg из репозитория.

docker run -v $(pwd):/lab_2 your_dockerhub_username/your_image_name:latest /path/to/image.jpg
