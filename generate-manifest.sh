#!/bin/bash

UPDATE_DIR="updates"
OUTPUT_FILE="$UPDATE_DIR/manifest.json"

# Check if dependencies are installed
if ! command -v jq &> /dev/null || ! command -v yq &> /dev/null; then
    echo "Error: 'jq' and 'yq' are required."
    exit 1
fi

echo "Generating $OUTPUT_FILE..."

# 1. Start the JSON array
echo "[" > "$OUTPUT_FILE"

# 2. Loop through files
first=true
for file in "$UPDATE_DIR"/*.md; do
    # 'select(di == 0)' picks only the first YAML document (the frontmatter)
    # we also check that it's an object and has a 'slug' to be safe
    content=$(yq eval -o=json 'select(di == 0) | select(kind == "map")' "$file" 2>/dev/null)
    
    # If content is not empty, add it to our list
    if [ ! -z "$content" ] && [ "$content" != "null" ]; then
        if [ "$first" = true ]; then
            echo "$content" >> "$OUTPUT_FILE"
            first=false
        else
            echo ",$content" >> "$OUTPUT_FILE"
        fi
    fi
done

# 3. Close the array
echo "]" >> "$OUTPUT_FILE"

# 4. Use jq to sort the final file by date (newest first) and format it nicely
# We overwrite the file with the sorted version
temp_json=$(jq 'sort_by(.date) | reverse' "$OUTPUT_FILE")
echo "$temp_json" > "$OUTPUT_FILE"

echo "Done! Manifest updated."