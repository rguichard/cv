#!/bin/bash
WORKDIR=$(pwd)
OUTPUT_DIR=$WORKDIR/pdf
INPUT_DIR=$WORKDIR/cv
for i in en fr; do
  cd $INPUT_DIR/$i
  xelatex cv.tex
  cp $INPUT_DIR/$i/cv.pdf $OUTPUT_DIR/cv.$i.pdf
done
ls -Rla $WORKDIR
