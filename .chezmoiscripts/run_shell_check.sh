#! /bin/sh

# Check if current shell is ZSH

if [ ! -n "$($SHELL -c 'echo $ZSH_VERSION')" ]; then
    echo ">>> Not running in a ZSH shell !!!"
fi

