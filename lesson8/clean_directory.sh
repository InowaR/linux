#!/bin/bash

# Проверка наличия аргумента - пути к директории
if [ -z "$1" ]; then
    echo "Ошибка: Путь к директории не указан"
    exit 1
fi

# Проверка существования директории
if [ ! -d "$1" ]; then
    echo "Ошибка: Директория не существует"
    exit 1
fi

# Удаление файлов с расширениями .bak, .tmp, .backup
find "$1" -type f \( -name "*.bak" -o -name "*.tmp" -o -name "*.backup" \) -delete

echo "Очистка завершена"