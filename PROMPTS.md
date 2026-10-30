# Prompts usados con IA

## Integrante 1 - Validacion de entrada (feature/validacion-argumentos)

Herramienta: Claude

Prompt:
"Estoy haciendo un script en Bash que recibe dos argumentos: una palabra o frase a buscar ($1) y la ruta de una carpeta ($2). Necesito la parte de validacion: que revise que se recibieron exactamente 2 argumentos y si no, muestre un mensaje de uso incorrecto y salga; y que revise que la ruta exista y sea un directorio. Hazlo sencillo, con if y mensajes claros."

## Integrante 2 - Motor de busqueda (feature/motor-busqueda)

Herramienta: Claude

Prompt:
"En un script de Bash ya tengo validadas las variables palabra y ruta. Necesito buscar de forma recursiva todos los archivos dentro de la carpeta que contengan la palabra o frase, guardar la lista en una variable e ignorar archivos binarios. Si no encuentra nada, que muestre un mensaje y termine. Explicame que hace cada opcion de grep."

## Integrante 3 - Formato y conteo (feature/formato-salida)

Herramienta: Claude

Prompt:
"Tengo en Bash una variable llamada archivos con la lista de archivos que contienen una palabra. Necesito recorrer esa lista y, por cada archivo, contar cuantas veces aparece la palabra (no cuantas lineas, sino cuantas veces) e imprimir la ruta del archivo con su frecuencia. Al final quiero un resumen con el total de archivos y el total de apariciones, con un formato visual claro en la terminal."
