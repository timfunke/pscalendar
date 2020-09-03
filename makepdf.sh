#!/bin/bash

# echo ${1/.ps/.pdf}
if [ "$1" == "" ]; then
	echo "Please specify an existing input PostScript file! ./makepdf.sh <postscript.ps>"
	exit
fi
# create a PDF file from the input PS file using ghostscript:
gs -dNOPAUSE -sPAPERSIZE=a4 -sDEVICE=pdfwrite -sOutputFile=${1/.ps/.pdf} $1
# gs -dNOPAUSE -sDEVICE=png16m -sOutputFile=calendar_2021.png -r120 $1
# convert -rotate 90 calendar_2021.png calendar_2021r.png
