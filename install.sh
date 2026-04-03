#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SOURCE_FILE="$SCRIPT_DIR/layouts/Russian-YaWERTY.keylayout"
TARGET_DIR="$HOME/Library/Keyboard Layouts"

mkdir -p "$TARGET_DIR"
cp "$SOURCE_FILE" "$TARGET_DIR/"

echo "Installed: $TARGET_DIR/$(basename "$SOURCE_FILE")"
echo "Next: log out and back in, then add 'Russian - ЯВЕРТЫ' in System Settings > Keyboard > Input Sources."
