#!/bin/sh

GIT_ROOT=$(cd "$(dirname $0)"; pwd)
CONFIG_ROOT=$GIT_ROOT/config
BACKUP_ROOT=$HOME/.configbackups

echo "Symlinking files from $CONFIG_ROOT to $HOME"

# TODO: Write a custom directory walker and choose to not recurse into
# submodules under .vim/bundle
for config_file in $(cd $CONFIG_ROOT && find . -type f | cut -c 3-)
do
    srcfile=$CONFIG_ROOT/$config_file
    destfile=$HOME/$config_file
    destdir=$(dirname $HOME/$config_file)
    if [ -e $destfile -a ! -h $destfile ]; then
        backupdir=$(dirname $BACKUP_ROOT/$config_file)
        # Create directories; Don't just symlink directories back here.
        mkdir -p $backupdir
        mv $destfile $backupdir
    fi
    mkdir -p $destdir
    ln -sf $CONFIG_ROOT/$config_file $destdir
done
