#! /bin/sh
# Check filesystem layout is properly defined

echo "Checking localhost filesystem layout..."

# Check Work folder exists in HOME
if [ ! -d "$HOME/Work" ]; then
  echo "ERROR: Folder $HOME/Work doesn't exist"
  exit 1
fi

# Check Code folder is a symlink to Work
if [ ! -L "$HOME/Code" ] || [ ! "$(readlink $HOME/Code)" = "$HOME/Work" ]; then
  echo "ERROR: $HOME/Code doesn't exist or is not a symlink to $HOME/Work"
  exit 1
fi

# Ensure $HOME/Documents/logs/ssh directory exists
mkdir -p "$HOME/Documents/logs/ssh"
# Ensure $HOME/.local/share/fonts directory exists
mkdir -p "$HOME/.local/share/fonts"

# Macos custom filesystem layout
if [ "$(uname -s)" = "Darwin"]; then
  mkdir -p "$HOME/Library/Fonts"
fi

# localhost file
