#!/bin/bash

PLUGINS=/config/Library/Application\ Support/Plex\ Media\ Server/Plug-ins

echo "Installing Webtools"

echo "Downloading $WEBTOOLS_BUNDLE"
curl -L $WEBTOOLS_BUNDLE -O > /dev/null
mkdir -p "$PLUGINS"

echo "Extracting WebTools.bundle.zip to $PLUGINS"
unzip -o WebTools.bundle.zip -d "$PLUGINS" > /dev/null
rm WebTools.bundle.zip

exec /init
