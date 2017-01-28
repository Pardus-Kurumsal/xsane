#!/bin/bash
#
# ###############################################################################
#                                                                               #
#                                   xsane2cunei 0.3                             #
#                                                                               #
#                          *** cuneiform made simple ***                        # 
#                                                                               # 
# ###############################################################################
# 
# xane2cunei is a wrapper to be able to use Cuneiform-Linux with XSane
# 
# 
#
TEMP_DIR=~/tmp/      # folder for temporary files
ERRORLOG="xsane2cunei.log"  # file where STDERR goes 

if [[ -z "$1"  ]]
  then
  echo "Usage: $0 [OPTIONS]

  xsane2cunei scans image files with XSane, 
  recognizes the text using cuneiform-linux
  and outputs the text in a file.
  
  OPTIONS:
    -i <file1>  define input file (any image-format supported)
    -o <file2>  define output file (txt, html, hocr, rtf)
    -l <language> define the language used for recognition
    -f <format> define the format used for output
    -e <extraoptions> optional: dotmatrix, fax, singlecolumn
 
  Progress- & error-messages will be stored in this logfile:
     $TEMP_DIR$ERRORLOG

  xsane2cunei depends on
    - XSane http://www.xsane.org/
    - libmagick-++dev  http://www.imagemagick.org/
    - cuneiform-linux   https://launchpad.net/cuneiform-linux Cuneiform-Linux
  
  Some coding was stolen from 'ocube'
  http://www.geocities.com/thierryguy/ocube.html

  This Cuneiform adaption is based on xsane2tess  
  http://doc.ubuntu-fr.org/xsane2tess, 

  Hints always welcome! heinrich (dot) schwietering (at) gmx (dot) de
"
  exit
fi

# get options...
while getopts ":i:o:l:f:e:" OPTION
  do
  case $OPTION in 
    i)  # input filename (with path)
      FILE_PATH="$OPTARG"
    ;;
    o )  # output filename
      FILE_OUT="$OPTARG"
    ;;
    l )  # recognition language
      LANGUAGE="$OPTARG"
    ;;
    f )  # output format
      FORMAT="$OPTARG"
    ;;
    e )  # extra option format
      EXTRA="$OPTARG"
    ;;
  esac
done

# redirect STDOUT to FILE_OUT
exec 1>>$FILE_OUT

# redirect STDERR to ERRORLOG
exec 2>>$TEMP_DIR$ERRORLOG

# strip path from FILE_PATH, use filename only
IN_FILE="${FILE_PATH##*/.*}"

# start OCR 
cuneiform -l "$LANGUAGE" -f "$FORMAT" -o "$FILE_OUT" "--$EXTRA" "$IN_FILE"  1>&2
