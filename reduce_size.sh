find images/thumbs -type f \( -iname "*.jpg" -o -iname "*.jpeg" \) -print0 | while IFS= read -r -d '' img; do
  sips -s format jpeg -s formatOptions 1 "$img" --out "$img"
done
