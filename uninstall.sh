#!/usr/bin/env bash
set -euo pipefail

TARGET_DIR="$HOME/Library/Keyboard Layouts"
BUNDLE_NAME="Russian-YaWERTY.bundle"
TARGET_PATH="$TARGET_DIR/$BUNDLE_NAME"

if [[ -d "$TARGET_PATH" ]]; then
  rm -rf "$TARGET_PATH"
  echo "Removed: $TARGET_PATH"
else
  echo "Not installed: $TARGET_PATH"
fi

echo "Next: remove 'Russian - ЯВЕРТЫ' from System Settings > Keyboard > Input Sources if it still appears, then log out and back in or restart macOS."
