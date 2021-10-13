# Scratchpad script

The aim of this script was to make it easy for me to organize my thoughts in a *notebook* style of folder and parse through lots of text so that I don't repeat mistakes that I already have solved in the past!

This script will be saved as a markdown file so that they can easily be converted to PDF or HTML.

## Setup

Allow scratchpad to be executable.

	chmod +x scratchpad

Change $FOLDER variable if you wish to save notes somewhere else

Choose which program you will write the notes in by editing your *$EDITOR* variable for your shell of choice

	export EDITOR=vim

Add this script to the crontab for your user

The following example will run scratchpad every 3 hours.

	crontab -e

	0 */3 * * * ~/scripts/scratchpad
