#!/bin/bash

PLEX_HOME="$HOME/Library/Application Support/Plex Media Server"
PLUGINS="$PLEX_HOME/Plug-ins"

echo "Installing Webtools"

echo "Downloading $WEBTOOLS_BUNDLE"
curl -L $WEBTOOLS_BUNDLE -O > /dev/null
mkdir -p "$PLUGINS"

echo "Extracting WebTools.bundle.zip to $PLUGINS"
unzip -o WebTools.bundle.zip -d "$PLUGINS" > /dev/null
rm WebTools.bundle.zip

echo "Download Absolute-Series-Scanner"
mkdir -p "$PLEX_HOME/Scanners/Series"
curl -L "$ABSOLUTE_SERIES_SCANNER_SCRIPT" -o "$PLEX_HOME/Scanners/Series/Absolute Series Scanner.py"
chown -R plex:plex "$PLEX_HOME/Scanners"
chmod -R 775 "$PLEX_HOME/Scanners"

exec /init
