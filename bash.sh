#!/bin/bash

# Set the icon path you want to add to the HTML files
ICON_PATH="favicon/favicon.ico"
FAVICON_TAG="<link rel=\"icon\" href=\"$ICON_PATH\" type=\"image/x-icon\" />"

# Find all .html files in the current directory and subdirectories
find . -name "*.html" | while read -r FILE; do
  # Check if the favicon tag is already present in the file
  if ! grep -q "$ICON_PATH" "$FILE"; then
    # Add the favicon tag before the closing </head> tag
    sed -i "/<\/head>/i $FAVICON_TAG" "$FILE"
    echo "Added favicon to: $FILE"
  else
    echo "Favicon already present in: $FILE"
  fi
done
