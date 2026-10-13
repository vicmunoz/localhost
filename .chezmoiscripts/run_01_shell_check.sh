#! /bin/sh

# Check if current shell is ZSH

echo "Checking localhost shell is zsh..."

if [ ! -n "$($SHELL -c 'echo $ZSH_VERSION')" ]; then
    echo "ERROR >>> Not running in a ZSH shell !!!"
    exit 1
fi
# localhost file
