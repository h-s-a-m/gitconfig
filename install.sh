#!/usr/bin/env bash
set -e

REPO_URL="https://github.com/h-s-a-m/gitconfig"
HSAM_GITMESSAGE_FILE="$HOME/.hsam_gitmessage"
WORKING_DIR="$(mktemp -d)"

trap 'rm -rf "$WORKING_DIR"' EXIT
  
git clone --depth 1 --single-branch "$REPO_URL" "$WORKING_DIR"
cp "$WORKING_DIR/.hsam_gitmessage" "$HSAM_GITMESSAGE_FILE"


git config --global commit.template "$HSAM_GITMESSAGE_FILE"

echo "Done ✅"