#! /bin/sh

if [ "$(uname -s)" = "Darwin" ]; then
  echo "Checking fonts files for macos..."
  src_dir="$HOME/.local/share/fonts"
  dst_dir="$HOME/Library/Fonts"
  for file in "$src_dir"/*; do
      filename=$(basename "$file")
      if [ ! -f "$dst_dir/$filename" ]; then
          cp "$file" "$dst_dir/"
          echo "Copied font file: $filename"
      fi
  done
fi

# localhost file
