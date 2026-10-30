# Prompts usados con IA

## Integrante 1 - Validacion de entrada (feature/validacion-argumentos)

Herramienta: Claude

Prompt:
"Estoy haciendo un script en Bash que recibe dos argumentos: una palabra o frase a buscar ($1) y la ruta de una carpeta ($2). Necesito la parte de validacion: que revise que se recibieron exactamente 2 argumentos y si no, muestre un mensaje de uso incorrecto y salga; y que revise que la ruta exista y sea un directorio. Hazlo sencillo, con if y mensajes claros."

## Integrante 2 - Motor de busqueda (feature/motor-busqueda)

Herramienta: Claude

Prompt:
"En un script de Bash ya tengo validadas las variables palabra y ruta. Necesito buscar de forma recursiva todos los archivos dentro de la carpeta que contengan la palabra o frase, guardar la lista en una variable e ignorar archivos binarios. Si no encuentra nada, que muestre un mensaje y termine. Explicame que hace cada opcion de grep."
