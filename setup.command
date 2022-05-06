#!/bin/bash
SCRIPT_PATH=$(dirname "$0")
  # mogrify is available
  # low res version of image
  python3 $SCRIPT_PATH/tools/duplicate.py min
  mogrify -resize 640x $SCRIPT_PATH/photos/**/*.min.jpeg &>/dev/null
  mogrify -resize 640x $SCRIPT_PATH/photos/**/*.min.png &>/dev/null
  mogrify -resize 640x $SCRIPT_PATH/photos/**/*.min.jpg &>/dev/null
  # placeholder image for lazy loading
  python3 $SCRIPT_PATH/tools/duplicate.py placeholder
  mogrify -resize 32x $SCRIPT_PATH/photos/**/*.placeholder.jpeg &>/dev/null
  mogrify -resize 32x $SCRIPT_PATH/photos/**/*.placeholder.png &>/dev/null
  mogrify -resize 32x $SCRIPT_PATH/photos/**/*.placeholder.jpg &>/dev/null
python3 $SCRIPT_PATH/tools/setup.py 