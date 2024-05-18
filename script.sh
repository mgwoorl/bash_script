#!/bin/bash

parent_dir=$(dirname "$PWD")

echo "Введите имя файла:"
read filename

if [ -f "$parent_dir/$filename" ]; then
    echo "Файл $filename существует. Выводим первые 10 строк файла:"
    head "$parent_dir/$filename"

    echo "Хотите удалить файл? (да/нет)"
    read answer

    if [ "$answer" = "да" ]; then
        
        echo "Файл $filename был удален"

    elif [ "$answer" = "нет" ]; then
        echo "Файл не был удален"

    else
        echo "Команда не распознана"
    fi
fi
