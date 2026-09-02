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

if ! command -v python3 >/dev/null 2>&1; then
  echo "Error: python3 is required (build-docs.sh silently skips Storybook embeds without it)" >&2
  exit 1
fi

# 1. Make sure the doc repo is on v5 and up to date before anything lands in it.
echo "Preparing $DOC_REPO (branch v5) ..."
git -C "$DOC_REPO" fetch origin
if [ "$(git -C "$DOC_REPO" symbolic-ref --short HEAD)" != "v5" ]; then
  git -C "$DOC_REPO" checkout v5
fi
git -C "$DOC_REPO" pull --ff-only origin v5

# 2. Regenerate docs in the uxp repo (writes to $UXP_REPO/docs)
echo "Generating docs in $UXP_REPO ..."
( cd "$UXP_REPO" && npm run build:docs )

# 3. Clear this repo (keep .git + this script) and copy the fresh docs in.
echo "Syncing docs → $DOC_REPO ..."
rsync -a --delete \
  --exclude=".git" \
  --exclude="$SCRIPT_NAME" \
  "$UXP_REPO/docs/" "$DOC_REPO/"

# 4. Commit and push — GitBook git-sync publishes from origin/v5 automatically.
git -C "$DOC_REPO" add -A
if git -C "$DOC_REPO" diff --cached --quiet; then
  echo "Docs already up to date."
  exit 0
fi

UXP_SHA="$(git -C "$UXP_REPO" rev-parse --short HEAD)"
UXP_BRANCH="$(git -C "$UXP_REPO" rev-parse --abbrev-ref HEAD)"
git -C "$DOC_REPO" commit -m "Sync docs from uxp $UXP_SHA ($UXP_BRANCH)"
git -C "$DOC_REPO" push origin v5

echo "Pushed $(git -C "$DOC_REPO" rev-parse --short HEAD) to origin/v5 — GitBook will pick it up."
