
# ===== Modulo 2: Motor de busqueda =====
# Rama: feature/motor-busqueda

# -r busca en subcarpetas, -l solo da el nombre del archivo,
# -I ignora archivos binarios, -F toma la palabra como texto literal
archivos=$(grep -rlIF "$palabra" "$ruta")

if [ -z "$archivos" ]; then
    echo "No se encontraron archivos que contengan \"$palabra\""
    exit 0
fi
