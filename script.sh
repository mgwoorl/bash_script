#!/bin/bash

parent_dir=$(dirname "$PWD")

echo "Введите имя файла:"
read filename

if [ -f "$parent_dir/$filename" ]; then
    echo "Файл $filename в директории $parent_dir существует. Выводим первые 10 строк файла:"
    head "$parent_dir/$filename"

    echo "Хотите удалить файл? (да/нет)"
    read answer

    if [ "$answer" = "да" ]; then
        
        echo "Файл $filename был удален из директории $parent_dir"

    elif [ "$answer" = "нет" ]; then
        echo "Файл не был удален"

    else
        echo "Команда не распознана"
    fi

else
    echo "Файла с названием $filename не существует в директории $parent_dir"
fi
