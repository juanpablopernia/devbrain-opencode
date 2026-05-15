#!/usr/bin/env bash
set -euo pipefail

KIT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
TARGET_DIR="${1:-.}"
FORCE="${2:-}"
mkdir -p "${TARGET_DIR}"
TARGET_DIR="$(cd "${TARGET_DIR}" && pwd)"

mkdir -p "${TARGET_DIR}/.opencode"

copy_dir_safe() {
  local src="$1"
  local dst="$2"

  if [ -e "$dst" ] && [ "$FORCE" != "--force" ]; then
    echo "Existe, no se sobrescribe: $dst"
  else
    rm -rf "$dst"
    cp -R "$src" "$dst"
    echo "Actualizado: $dst"
  fi
}

copy_file_safe() {
  local src="$1"
  local dst="$2"

  if [ -e "$dst" ] && [ "$FORCE" != "--force" ]; then
    echo "Existe, no se sobrescribe: $dst"
  else
    cp "$src" "$dst"
    echo "Actualizado: $dst"
  fi
}

copy_dir_safe "${KIT_DIR}/.opencode/agents" "${TARGET_DIR}/.opencode/agents"
copy_dir_safe "${KIT_DIR}/.opencode/commands" "${TARGET_DIR}/.opencode/commands"
copy_dir_safe "${KIT_DIR}/.opencode/skills" "${TARGET_DIR}/.opencode/skills"
copy_file_safe "${KIT_DIR}/.opencode/opencode.jsonc" "${TARGET_DIR}/.opencode/opencode.jsonc"

echo "Kit actualizado en: ${TARGET_DIR}/.opencode"
if [ "$FORCE" != "--force" ]; then
  echo "Modo seguro: no se sobrescribieron personalizaciones existentes. Usa --force para reemplazarlas."
fi
echo "No se modificaron archivos docs/brain ni AGENTS.md."
