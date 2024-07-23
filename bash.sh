#!/bin/bash

# Find and rename all items that match the pattern "*ossec*"
find . -iname "*ossec*" | while read -r item; do
    # Extract the base name of the item
    base_name=$(basename "$item")
    dir_name=$(dirname "$item")

    # Determine the new name
    if [[ "$base_name" == ossec* ]]; then
        new_name="$dir_name/openarmor${base_name:5}"
    elif [[ "$base_name" == *ossec* ]]; then
        new_name="$dir_name/${base_name/ossec/openarmor}"
    fi

    # Rename the item
    mv "$item" "$new_name"
    echo "Renamed: $item -> $new_name"
done

