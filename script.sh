#!/bin/bash

parent_dir=$(dirname "$PWD")

echo "Введите имя файла:"
read filename

if [ -f "$parent_dir/$filename" ]; then
    echo "Файл $filename существует. Выводим первые 10 строк файла:"
    head "$parent_dir/$filename"
fi
