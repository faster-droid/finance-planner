#!/bin/bash

# Задайте переменные: замените на свои данные
REMOTE_USER="имя_пользователя"
REMOTE_HOST="адрес_сервера"
SSH_PORT="22"  # Замените, если используется нестандартный порт

# 1. Генерация SSH-ключа без фразы-пароля
ssh-keygen -t rsa -b 4096 -N "" -f ~/.ssh/id_rsa

# 2. Копирование публичного ключа на удалённый сервер
ssh-copy-id -i ~/.ssh/id_rsa.pub -p $SSH_PORT $REMOTE_USER@$REMOTE_HOST

# 3. Подключение к серверу и установка необходимого ПО
ssh -p $SSH_PORT $REMOTE_USER@$REMOTE_HOST << EOF
# Обновление пакетов
sudo apt-get update

# Установка Git
sudo apt-get install -y git

# Установка Docker
sudo apt-get install -y docker.io

# Добавление пользователя в группу docker
sudo usermod -aG docker $USER

# Установка Docker Compose
sudo apt-get install -y docker-compose

# Клонирование репозитория в домашнюю директорию
cd ~
git clone git@github.com:faster-droid/finance-planner.git

EOF