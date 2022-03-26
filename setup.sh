#!/bin/sh

WORKDIR=$(mktemp -d)

wget -O $WORKDIR/code.tar.gz 'https://code.visualstudio.com/sha/download?build=stable&os=linux-x64'
tar -xzvf $WORKDIR/code.tar.gz && rm -rf $WORKDIR/code.tar.gz
mkdir $HOME/apps
mv $WORKDIR/VSCode-linux-x64 $HOME/apps/vscode
echo "PATH=$HOME/apps/vscode/bin/:\$PATH" >> $HOME/.bashrc
source $HOME/.bashrc