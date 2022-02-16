#!/bin/sh
#
# --- Scratchpad ---
#
# The aim of this script was to make it easy for me to
# organize my thoughts with text files on a static site.
# I like this approach as I can parse through lots of text
# quickly and so that I don't repeat mistakes that I already
# have solved in the past!
#
#
# This script will be saved as a markdown file
# so that they can easily be converted to html/pdf.
#
#
# Please change the path in the FOLDER variable to where
# you would like to save your notes! You may also edit the template
# using Markdown syntax!
#

export DISPLAY=":0.0"

FOLDER=${1:-"/home/$USER/"}
CURRENT_DATE=$(date "+%Y-%m-%d_%H:%M")

$EDITOR "${FOLDER}/${CURRENT_DATE}.md"
