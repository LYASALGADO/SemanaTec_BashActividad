#!/bin/bash
# Programa que busca una palabra o frase dentro de una carpeta
# Uso: ./script.sh "palabra o frase" /ruta/de/la/carpeta

# ===== Modulo 1: Validacion de entrada =====
# Rama: feature/validacion-argumentos

if [ $# -ne 2 ]; then
    echo "Error: uso incorrecto"
    echo "Uso: $0 \"palabra o frase\" /ruta/de/la/carpeta"
    exit 1
fi

palabra="$1"
ruta="$2"

if [ ! -e "$ruta" ]; then
    echo "Error: la ruta '$ruta' no existe"
    exit 1
fi

if [ ! -d "$ruta" ]; then
    echo "Error: '$ruta' no es un directorio"
    exit 1
fi
