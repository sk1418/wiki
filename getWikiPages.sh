#!/bin/bash
MY_DIR=$(pwd)
TEMPLATE_REPO=~/MyStuff/myCodes/vim/wiki_template
WIKI_HTML_DIR=~/vimwiki_html
rsync -av --no-links $WIKI_HTML_DIR/* . 
cd $TEMPLATE_REPO
mkdir -p $MY_DIR/template
git archive master|tar -x -C "$MY_DIR/template"
cd $MY_DIR
