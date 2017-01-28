#!/bin/bash
#    xsane2ocrad - ocr with ocrad directly from xsane
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
################################################################################
#                                                                              #
#                                  xsane2ocrad 0.1                             #
#                                                                              #
#                         ***   ocrad made simple   ***                        # 
#                                                                              # 
################################################################################
# 
# xane2ocrad is a wrapper to use Ocrad with XSane
# 
# 
#
TEMP_DIR=/tmp/      # folder for temporary files
ERRORLOG="xsane2ocrad.log"  # file where STDERR goes 

if [[ -z "$1"  ]]
  then
  echo "Usage: $0 [OPTIONS]

  xsane2ocrad scans image files with XSane, 
  recognizes the text using ocrad
  and outputs the text in a file.
  
  OPTIONS:
    -i <file1>  define input file (any image-format supported)
    -o <file2>  define output file (txt, html, hocr, rtf)
    -e <options> optional, all ocrad-Options, use quotes
 
  Progress- & error-messages will be stored in this logfile:
     $TEMP_DIR$ERRORLOG

  xsane2ocrad depends on
    - XSane, http://www.xsane.org/
    - ocrad, http://www.gnu.org/software/ocrad/
  
  Some coding was stolen from 'ocube'
  http://www.geocities.com/thierryguy/ocube.html

  This ocrad adaption is based on xsane2tess  
  http://doc.ubuntu-fr.org/xsane2tess, 

  Hints always welcome! heinrich (dot) schwietering (at) gmx (dot) de
"
  exit
fi

# get options...
while getopts ":i:o:e:" OPTION
  do
  case $OPTION in 
    i )  # input filename (with path)
      FILE_PATH="$OPTARG"
    ;;
    o )  # output filename
      FILE_OUT="$OPTARG"
    ;;
    e )  # extra options
      EXTRA="$OPTARG"
    ;;
  esac
done

# redirect STDERR to ERRORLOG
exec 2>>$TEMP_DIR$ERRORLOG
echo "~~~+++~~~~+++~~~" 1>&2

ocrad "$FILE_PATH" -o "$FILE_OUT" $EXTRA 1>&2
echo "ocrad "$FILE_PATH" -o "$FILE_OUT" $EXTRA ausgeführt" 1>&2

echo "~~~+++~~~~+++~~~"$(date +%c) 1>&2
