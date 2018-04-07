#!/bin/sh

tiddlywiki ./*wiki --build

echo "Mirroring files..."
rsync -azv --delete ./wiki/output/ /Users/eechris/Sites/journal
