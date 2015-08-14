#!/bin/bash
#
# vim-anywhere - use Vim whenever, wherever
# Author: Chris Knadler
# Delete almost everything: Vialrogo
# Original Homepage: https://www.github.com/cknadler/vim-anywhere
#
# Open a temporary file with Vim. Once Vim is closed, copy the contents of that
# file to the system clipboard.


TMPFILE_DIR=/tmp/vim-anywhere
TMPFILE=$TMPFILE_DIR/doc-$(date +"%y%m%d%H%M%S")
VIM_OPTS=--nofork

mkdir -p $TMPFILE_DIR
touch $TMPFILE

chmod o-r $TMPFILE # Make file only readable by you
gvim $VIM_OPTS $TMPFILE
cat $TMPFILE | xclip -selection clipboard
