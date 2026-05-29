#!/bin/bash
# Helper script to update the Flutter SDK SHA256 in the Flatpak manifest.
# Usage: bash linux/flatpak/get-flutter-sha256.sh [FLUTTER_VERSION]
#
# If no version is provided, looks up the latest stable version.
# Downloads the tarball, computes SHA256, and updates the manifest.

set -e

# Get Flutter version
if [ -n "$1" ]; then
  FLUTTER_VERSION="$1"
else
  echo "Looking up latest Flutter stable version..."
  FLUTTER_VERSION=$(curl -s https://storage.googleapis.com/flutter_infra_release/releases/releases_linux.json | \
    python3 -c "import sys,json; d=json.load(sys.stdin); print(d['current_release']['stable'])")
  echo "Latest stable: $FLUTTER_VERSION"
fi

FLUTTER_URL="https://storage.googleapis.com/flutter_infra_release/releases/stable/linux/flutter_linux_${FLUTTER_VERSION}-stable.tar.xz"

echo "Downloading: $FLUTTER_URL"
TMP_FILE=$(mktemp)
curl -L --progress-bar -o "$TMP_FILE" "$FLUTTER_URL"

echo "Computing SHA256..."
SHA256=$(sha256sum "$TMP_FILE" | awk '{print $1}')
echo "SHA256: $SHA256"

# Update manifest
MANIFEST="linux/flatpak/com.neogamelab.neostation.yml"
if [ -f "$MANIFEST" ]; then
  sed -i "s|url: https://storage.googleapis.com/flutter_infra_release/releases/stable/linux/flutter_linux_.*-stable.tar.xz|url: $FLUTTER_URL|" "$MANIFEST"
  sed -i "s|sha256: PLACEHOLDER_RUN_get-flutter-sha256.sh|sha256: $SHA256|" "$MANIFEST"
  echo "Updated $MANIFEST with Flutter $FLUTTER_VERSION"
else
  echo "Manifest not found at $MANIFEST"
  echo "Flutter URL: $FLUTTER_URL"
  echo "Flutter SHA256: $SHA256"
fi

rm -f "$TMP_FILE"
