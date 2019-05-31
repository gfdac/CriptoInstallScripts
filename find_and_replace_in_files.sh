#!/usr/bin/env bash

# *****************************************************************************************
# find_and_replace_in_files.sh
# This script does a recursive, case sensitive directory search and replace of files
# To make a case insensitive search replace, use the -i switch in the grep call
# uses a startdirectory parameter so that you can run it outside of specified directory - else this script will modify itself!
# *****************************************************************************************

# **************** Change Variables Here ************
startdirectory="/var/www/html/exchange"
#vem por parametro a origem
searchterm=$1
#searchterm="https://core.14bit.com/14bitPHP/"
#searchterm="https://14bit.com/exchange/"
#vem por parametro o destino
replaceterm=$2
#replaceterm="https://IP/14bitPHP/"
# **********************************************************

echo "***************************************************"
echo "* Search and Replace in Files Version 01-Jul-2018 *"
echo "* Author: Gustavo Clemente                        *"
echo "* gfdac.dev@gmail.com                    *"
echo "***************************************************"

i=0; 

  for file in $(grep -l -R $searchterm $startdirectory)
    do
      cp $file $file.bak
      sed -e 's/$searchterm/$replaceterm/g' $file > tempfile.tmp
      # sed -i -- "s/$searchterm/$replaceterm/g" "$file" >  tempfile.tmp
      mv tempfile.tmp $file

    let i++;

      echo "Modified: " $file
    done

echo " *** All Done! *** Modified files:" $i