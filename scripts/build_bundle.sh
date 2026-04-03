#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT_DIR="$(cd "$SCRIPT_DIR/.." && pwd)"
DIST_DIR="$ROOT_DIR/dist"
BUNDLE_NAME="Russian-YaWERTY.bundle"
BUNDLE_DIR="$DIST_DIR/$BUNDLE_NAME"
RESOURCES_DIR="$BUNDLE_DIR/Contents/Resources"
ICONSET_DIR="$DIST_DIR/RussianFlag.iconset"
SVG_FILE="$ROOT_DIR/assets/yaw-logo.svg"
KEYLAYOUT_SOURCE="$ROOT_DIR/layouts/Russian-YaWERTY.keylayout"
KEYLAYOUT_TARGET="$RESOURCES_DIR/Russian-YaWERTY.keylayout"
ICON_TARGET="$RESOURCES_DIR/Russian-YaWERTY.icns"

rm -rf "$BUNDLE_DIR" "$ICONSET_DIR"
mkdir -p "$RESOURCES_DIR" "$ICONSET_DIR"

cp "$ROOT_DIR/bundle/Contents/Info.plist" "$BUNDLE_DIR/Contents/Info.plist"
cp "$ROOT_DIR/bundle/Contents/version.plist" "$BUNDLE_DIR/Contents/version.plist"
cp "$KEYLAYOUT_SOURCE" "$KEYLAYOUT_TARGET"

for size in 16 32 64 128 256 512 1024; do
  sips -s format png -z "$size" "$size" "$SVG_FILE" --out "$ICONSET_DIR/icon_${size}x${size}.png" >/dev/null
done

for size in 16 32 128 256 512; do
  double_size=$((size * 2))
  cp "$ICONSET_DIR/icon_${double_size}x${double_size}.png" "$ICONSET_DIR/icon_${size}x${size}@2x.png"
done

iconutil --convert icns --output "$ICON_TARGET" "$ICONSET_DIR"
rm -rf "$ICONSET_DIR"

echo "Built bundle:"
echo "$BUNDLE_DIR"
