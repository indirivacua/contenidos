#!/bin/bash

# Este script prepara los archivos generados para que puedan ser publicados como una release en GitHub sin sobreescribir los nombres de archivo.

set -eo pipefail

DEST="_dist"

mkdir -p "${DEST}"

for subject in iso so; do
  for dir in $(find pdf -name "${subject}" -type d); do
    for file in $(find $dir -name '*.pdf'); do
      group="$(dirname "${file}")"
      group=${group##pdf/}
      group="${group%%/*}"
      target="${subject}_${group}_$(basename "${file}")"
      cp "${file}" "${DEST}/${target}"
    done
  done
done
