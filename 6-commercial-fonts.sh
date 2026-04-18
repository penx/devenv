#!/usr/bin/env bash

FONTS_REPO=https://github.com/penx/fonts.git
FONTS_DIR=$(mktemp -d)

git clone "$FONTS_REPO" "$FONTS_DIR"

find "$FONTS_DIR" -type f \( -name "*.ttf" -o -name "*.otf" -o -name "*.woff" -o -name "*.woff2" \) -exec cp {} ~/Library/Fonts/ \;

rm -rf "$FONTS_DIR"
