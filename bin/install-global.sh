#!/usr/bin/env bash
set -euo pipefail

KIT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
TARGET="${HOME}/.config/opencode"
FORCE="${1:-}"

mkdir -p "${TARGET}/agents" "${TARGET}/commands" "${TARGET}/skills"

copy_tree() {
  local src_dir="$1"
  local dst_dir="$2"

  for src in "$src_dir"/*; do
    local name
    name="$(basename "$src")"
    local dst="$dst_dir/$name"

    if [ -e "$dst" ] && [ "$FORCE" != "--force" ]; then
      echo "Existe, no se sobrescribe: $dst"
    else
      rm -rf "$dst"
      cp -R "$src" "$dst"
      echo "Instalado: $dst"
    fi
  done
}

copy_tree "${KIT_DIR}/.opencode/agents" "${TARGET}/agents"
copy_tree "${KIT_DIR}/.opencode/commands" "${TARGET}/commands"
copy_tree "${KIT_DIR}/.opencode/skills" "${TARGET}/skills"

echo "DevBrain OpenCode Kit instalado globalmente en: ${TARGET}"
if [ "$FORCE" != "--force" ]; then
  echo "Modo seguro: no se sobrescribieron archivos existentes. Usa --force para reemplazarlos."
fi
echo "Ahora puedes ejecutar opencode y usar comandos como /intake, /plan, /implement, /review y /document."
