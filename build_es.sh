#!/bin/bash
set -e

DEST_DIR="cvs_spanish"
BASE_NAME="CV_Luciano_Chiroli_ES_2025"
EXT="pdf"

echo "🚀 Generando CV en Español..."

# Crear carpeta destino
mkdir -p "$DEST_DIR"

# Renderizar (RenderCV siempre crea rendercv_output)
rendercv render cv_es.yaml

# Buscar PDF generado
PDF_PATH=$(find rendercv_output -name "*.pdf" | head -n 1)

# Determinar nombre versionado
FINAL_PATH="$DEST_DIR/$BASE_NAME.$EXT"
VERSION=2

while [ -f "$FINAL_PATH" ]; do
  FINAL_PATH="$DEST_DIR/${BASE_NAME}_v$VERSION.$EXT"
  VERSION=$((VERSION + 1))
done

# Mover y renombrar
mv "$PDF_PATH" "$FINAL_PATH"

# Limpiar output de RenderCV
rm -rf rendercv_output

echo "✅ CV generado: $FINAL_PATH"
