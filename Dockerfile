# Используем официальный образ Python
FROM python:3.9-slim

# Устанавливаем зависимости
RUN apt-get update && apt-get install -y \
    libsm6 \
    libxext6 \
    libxrender-dev \
    libgl1-mesa-glx \
    libglib2.0-0 \
    && rm -rf /var/lib/apt/lists/*

# Устанавливаем OpenCV
RUN pip install opencv-python

# Копируем ваше приложение в контейнер
COPY . /lab_2
WORKDIR /lab_2

# Устанавливаем зависимости вашего приложения
RUN pip install -r requirements.txt

# Указываем команду для запуска приложения
CMD ["python", "app.py"]
