#!/usr/bin/env bash
set -euo pipefail

KIT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
TARGET_DIR="${1:-.}"
mkdir -p "${TARGET_DIR}"
TARGET_DIR="$(cd "${TARGET_DIR}" && pwd)"

mkdir -p "${TARGET_DIR}/docs/brain"
mkdir -p "${TARGET_DIR}/.opencode"

copy_if_missing() {
  local src="$1"
  local dst="$2"
  if [ -e "$dst" ]; then
    echo "Existe, no se sobrescribe: $dst"
  else
    cp "$src" "$dst"
    echo "Creado: $dst"
  fi
}

copy_dir_if_missing() {
  local src="$1"
  local dst="$2"
  if [ -e "$dst" ]; then
    echo "Existe, no se sobrescribe: $dst"
  else
    cp -R "$src" "$dst"
    echo "Creado: $dst"
  fi
}

copy_if_missing "${KIT_DIR}/templates/AGENTS.template.md" "${TARGET_DIR}/AGENTS.md"
copy_if_missing "${KIT_DIR}/templates/README.template.md" "${TARGET_DIR}/README.md"
copy_if_missing "${KIT_DIR}/templates/gitignore.template" "${TARGET_DIR}/.gitignore"
copy_if_missing "${KIT_DIR}/templates/CONTEXT_INDEX.template.md" "${TARGET_DIR}/docs/brain/CONTEXT_INDEX.md"
copy_if_missing "${KIT_DIR}/templates/PROJECT_BLUEPRINT.template.md" "${TARGET_DIR}/docs/brain/PROJECT_BLUEPRINT.md"
copy_if_missing "${KIT_DIR}/templates/DECISIONS.template.md" "${TARGET_DIR}/docs/brain/DECISIONS.md"
copy_if_missing "${KIT_DIR}/templates/MEMORY.template.md" "${TARGET_DIR}/docs/brain/MEMORY.md"
copy_if_missing "${KIT_DIR}/templates/ERRORS_SOLVED.template.md" "${TARGET_DIR}/docs/brain/ERRORS_SOLVED.md"

# Copia configuración local de opencode sin sobrescribir personalizaciones existentes.
copy_dir_if_missing "${KIT_DIR}/.opencode/agents" "${TARGET_DIR}/.opencode/agents"
copy_dir_if_missing "${KIT_DIR}/.opencode/commands" "${TARGET_DIR}/.opencode/commands"
copy_dir_if_missing "${KIT_DIR}/.opencode/skills" "${TARGET_DIR}/.opencode/skills"
copy_if_missing "${KIT_DIR}/.opencode/opencode.jsonc" "${TARGET_DIR}/.opencode/opencode.jsonc"

copy_if_missing "${KIT_DIR}/templates/ENV.example.template" "${TARGET_DIR}/.env.example"

echo ""
echo "Proyecto inicializado con DevBrain OpenCode Kit."
echo "Ruta: ${TARGET_DIR}"
echo ""
echo "Siguiente paso:"
echo "  cd \"${TARGET_DIR}\""
echo "  opencode"
echo ""
echo "Dentro de opencode:"
echo "  /intake"
