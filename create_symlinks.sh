#!/bin/sh

CONFIG_ROOT=$(cd "$(dirname $0)/config"; pwd)
BACKUP_ROOT=$HOME/.configbackups

echo "Symlinking files from $CONFIG_ROOT to $HOME"

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
