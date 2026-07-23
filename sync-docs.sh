#!/bin/bash
set -euo pipefail

# This repo (the doc repo) = script location; uxp repo is its sibling.
DOC_REPO="$(cd "$(dirname "$0")" && pwd)"
UXP_REPO="${UXP_REPO:-$DOC_REPO/../uxp}"
SCRIPT_NAME="$(basename "$0")"

if [ ! -f "$UXP_REPO/build-docs.sh" ]; then
  echo "Error: uxp repo not found at $UXP_REPO (override with UXP_REPO=...)" >&2
  exit 1
fi

# 1. Regenerate docs in the uxp repo (writes to $UXP_REPO/docs)
echo "Generating docs in $UXP_REPO ..."
( cd "$UXP_REPO" && npm run build:docs )

# 2. Clear this repo (keep .git + this script) and copy the fresh docs in.
echo "Syncing docs → $DOC_REPO ..."
rsync -a --delete \
  --exclude=".git" \
  --exclude="$SCRIPT_NAME" \
  "$UXP_REPO/docs/" "$DOC_REPO/"

echo "Done. Review changes with: git -C \"$DOC_REPO\" status"
