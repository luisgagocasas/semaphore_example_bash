#!/bin/bash

# Script para listar todos los directorios en el directorio actual

# Obtener el directorio actual desde donde se está ejecutando el script
SCRIPT_DIR="$(pwd)"

echo "Listando directorios en: $SCRIPT_DIR"
echo "-------------------------------------"

# Usar find para listar solo directorios no recursivamente
# -maxdepth 1: Limita la búsqueda al directorio actual
# -type d: Busca solo directorios
# ! -name ".": Excluye el directorio actual (.)
find "$SCRIPT_DIR" -maxdepth 1 -type d ! -name "." | while read -r dir; do
    # Extraer solo el nombre del directorio sin la ruta completa
    basename "$dir"
done

echo "-------------------------------------"
echo "Total de directorios encontrados: $(find "$SCRIPT_DIR" -maxdepth 1 -type d ! -name "." | wc -l)"
