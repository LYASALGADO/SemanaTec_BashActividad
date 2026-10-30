
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
