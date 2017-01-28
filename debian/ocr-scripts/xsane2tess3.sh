#!/bin/bash
#    xsane2tess3 - tesseractOCR directly from xsane
#    Copyright (C) 2012 Heinrich Schwietering
# 
#    This program is free software: you can redistribute it and/or modify
#    it under the terms of the GNU General Public License as published by
#    the Free Software Foundation, either version 3 of the License, or
#    (at your option) any later version.
#
#    This program is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.
#
#    You should have received a copy of the GNU General Public License
#    along with this program.  If not, see <http://www.gnu.org/licenses/>.
#
#
##############################################################################
#
#                                   xsane2tess3 0.1
#
#                          *** tesseract made simple ***
#
#
##############################################################################
#
# xsane2tess is a TesseractOCR 3.0x wrapper to be able to use tesseract with xsane
#
#
#
TEMP_DIR=/tmp/      # folder for temporary files (all files)
ERRORLOG="xsane2tess3.log"  # file where STDERR goes 

if [[ -z "$1"  ]]
  then
  echo "Usage: $0 [OPTIONS]

  xsane2tess3 scans images with TesseractOCR
  and outputs the text in a file or as hocr/html document

  OPTIONS:
    -i <file1>  define input file (any image-format supported)
    -o <file2>  define output-file (*.txt/hOCR)
    -l <lang>  define language-data tesseract should use
    -e <config> filename for tesseract
    -f </path/to/Final> name and path fot multiscan document

  Progress- & error-messages will be stored in this logfile:
     $TEMP_DIR$ERRORLOG

  xsane2tess depends on
    - XSane, http://www.xsane.org/
    - TesseractOCR, http://code.google.com/p/tesseract-ocr/

  Some coding was stolen from 'ocube'
  http://www.geocities.com/thierryguy/ocube.html
  
  This adaption is based on xsane2tess  
  http://doc.ubuntu-fr.org/xsane2tess, 

  Hints always welcome! heinrich (dot) schwietering (at) gmx (dot) de

"
  exit
fi


# get options...
while getopts ":i:o:l:c:f:" OPTION
  do
  case $OPTION in
    i )  # input filename (with path)
      FILE_PATH="$OPTARG"
    ;;
    o )  # output filename
      FILE_OUT="$OPTARG"
    ;;
    l )  # Language-selection
      LANG="$OPTARG"
    ;;
    c )  # use hocr configfile
      CONFILE="$OPTARG"
    ;;
    f )  # final name for multiscan ocr file
      FINAL="$OPTARG"
    ;;
  esac
done

# redirect STDOUT to FILE_OUT
exec 1>>$FILE_OUT

# redirect STDERR to ERRORLOG
exec 2>>$TEMP_DIR$ERRORLOG

# strip path from FILE_PATH, use filename only
IN_FILE="${FILE_PATH##*/.*}"

echo "~~~+++~~~~+++~~~" 1>&2

# start OCR (tesseract expands output with *.txt/.html)
tesseract "$IN_FILE" "$FILE_OUT" -l "$LANG" "$CONFILE" 1>&2
echo Tesseract used with "$LANG" "$CONFILE" 1>&2

{ if [[ "$FINAL" != '' ]]
  then
    { if [[ "$CONFILE" == "" ]]
    then
	# check if final txt file is already existing
	    { if [[ ! -a "$FINAL".txt ]]
    	then
# start final ocr file
    	cp "$FILE_OUT".txt "$FINAL".txt 1>&2
	echo "$FINAL.txt started" 1>&2
	else
                mv "$FINAL".txt "$FINAL".new.txt
	cat "$FINAL".new.txt "$FILE_OUT".txt > "$FINAL".txt
	echo "$FILE_OUT.txt added to $FINAL.txt" 1>&2
	rm "$FINAL".new.txt
	fi }
    else
# check if final hocr file is already existing
	    { if [[ ! -a "$FINAL".html ]]
    	then
# start final ocr file
    	cp "$FILE_OUT.html" "$FINAL".html 1>&2
	echo "$FINAL.html started" 1>&2
	else
                mv "$FINAL".html "$FINAL".new.html
	cat "$FINAL".new.html "$FILE_OUT".html > "$FINAL".html
	echo "$FILE_OUT.html added to $FINAL.html" 1>&2
	rm "$FINAL".new.html
	fi }
    fi }
    rm $FILE_OUT	
    else
# STDOUT scanned text => FILE_OUT
    cat "$FILE_OUT".*

fi }

rm $FILE_OUT.*

echo "~~~+++~~~~+++~~~"$(date +%c) 1>&2
