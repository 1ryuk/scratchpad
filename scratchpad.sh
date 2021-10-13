#!/bin/sh
#
# --- Scratchpad ---
#
# The aim of this script was to make it easy for me to
# organize my thoughts in a *notebook* style of folder
# and parse through lots of text so that I don't repeat mistakes
# that I already have solved in the past!
#
# This script will be saved as a markdown file
# so that they can easily be converted to pdf/html.
#
#  --- Setup ---
#
# 1. Allow scratchpad to be executable. (chmod +x scratchpad)
#
# 2. Change $FOLDER variable if you wish to save notes somewhere else
#
# 3. Export your $EDITOR variable in your shell (.bashrc / .zshrc)
#	 and refresh it (source .bashrc)
#
#	 ex) export EDITOR=vim
#
# 4. Add this script to the crontab for your user
#
#	 ex)
#    //Open your user's crontab.
#	 [user@home ~]$ crontab -e
#
#	 // The following will run scratchpad every 3 hours.
#
#	  0 */3 * * * ~/scripts/scratchpad
#

export DISPLAY=":0.0"

FOLDER=${1:-"~/vimwiki/notes"}
CURRENT_DATE=$(date "+%Y%m%d%H%M")

touch ${FOLDER}/${CURRENT_DATE}.md

cat >> ${FOLDER}/${CURRENT_DATE}.md << EOF
===================
Thoughts:
===================

===================
Problem:
===================

===================
Solution:
===================

EOF

$EDITOR ${FOLDER}/${CURRENT_DATE}.md
