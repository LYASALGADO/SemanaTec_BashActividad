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

# ===== Modulo 2: Motor de busqueda =====
# Rama: feature/motor-busqueda

# -r busca en subcarpetas, -l solo da el nombre del archivo,
# -I ignora archivos binarios, -F toma la palabra como texto literal
archivos=$(grep -rlIF "$palabra" "$ruta")

if [ -z "$archivos" ]; then
    echo "No se encontraron archivos que contengan \"$palabra\""
    exit 0
fi

# ===== Modulo 3: Formato y conteo de ocurrencias =====
# Rama: feature/formato-salida

echo "=============================================="
echo " Palabra buscada:   \"$palabra\""
echo " Carpeta analizada: $ruta"
echo "=============================================="

total_archivos=0
total_veces=0

while read -r archivo; do
    # -o pone cada coincidencia en su propia linea, wc -l las cuenta
    veces=$(grep -oF "$palabra" "$archivo" | wc -l | tr -d ' ')
    echo " $archivo  ->  $veces veces"
    total_archivos=$((total_archivos + 1))
    total_veces=$((total_veces + veces))
done <<< "$archivos"

echo "----------------------------------------------"
echo " Archivos encontrados: $total_archivos"
echo " Total de apariciones: $total_veces"
echo "=============================================="
