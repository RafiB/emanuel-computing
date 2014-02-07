#!/bin/bash

path=`readlink -m "$0" | sed 's/\/deconsolidate.sh$//'`
echo "Copying files in source to .themes/emanuel/source"
echo "  cp -r $path/source/* $path/.themes/emanuel/source/"
cp -r $path/source/* $path/.themes/emanuel/source/
