#! /bin/bash

TEMPLATE_TOP=./template_top
TEMPLATE_BOT=./template_bot

for f in $(find . -name '*.phtml'); do
  newf="${f::-6}.html" 
  echo $newf
  cat $TEMPLATE_TOP > $newf
  sed "s/^/    /" $f >> $newf
  cat $TEMPLATE_BOT >> $newf
done
