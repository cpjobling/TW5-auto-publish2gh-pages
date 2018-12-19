#!/bin/sh

# Preserve tiddlywki.info
cp ./*wiki/tiddlywiki.info .
# change to static
cp static.info ./*wiki/tiddlywiki.info
# Remove old site
rm -rf ./*wiki/output
# Build
tiddlywiki ./*wiki --build
# Restore info file
mv tiddlywiki.info ./*wiki

echo "Mirroring files..."
rsync -azv --delete ./wiki/output/ /Users/eechris/Sites/journal
