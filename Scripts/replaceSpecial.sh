#!/bin/bash

filePath='./model.xml'
# replace </ with SUBBE, so its save from removal
sed -i 's/<\//SUBBE/g' $filePath

# replace /> with SUBEND, so its save from removal
sed -i 's/\/>/SUBEND/g' $filePath

# remove +
sed -i 's/\+//g' $filePath

# remove /
sed -i 's/\///g' $filePath

# return </ to normal
sed -i 's/SUBBE/<\//g' $filePath

# return /> to normal
sed -i 's/SUBEND/\/>/g' $filePath
