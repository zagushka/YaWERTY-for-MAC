#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
TARGET_DIR="$HOME/Library/Keyboard Layouts"
BUNDLE_NAME="Russian-YaWERTY.bundle"
BUNDLE_PATH="$SCRIPT_DIR/dist/$BUNDLE_NAME"

mkdir -p "$TARGET_DIR"
"$SCRIPT_DIR/scripts/build_bundle.sh"
mkdir -p "$TARGET_DIR"
rm -rf "$TARGET_DIR/$BUNDLE_NAME"
cp -R "$BUNDLE_PATH" "$TARGET_DIR/"

echo "Installed: $TARGET_DIR/$BUNDLE_NAME"
echo "Next: restart macOS or log out and back in, then add 'Russian - ЯВЕРТЫ' in System Settings > Keyboard > Input Sources."
