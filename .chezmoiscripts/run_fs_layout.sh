#! /bin/sh

# Check filesystem layout is properly defined

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
