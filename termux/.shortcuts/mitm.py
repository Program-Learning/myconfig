#!/data/data/com.termux/files/usr/bin/sh
SCRIPT_NAME=$(basename "$0")
SCRIPT_PATH="/data/data/com.termux/files/home/scripts/$SCRIPT_NAME"

if [ -f "$SCRIPT_PATH" ]
then
  sudo python "$SCRIPT_PATH"
else
  ls $SCRIPT_PATH
  echo "Script $SCRIPT_NAME not found in $SCRIPT_PATH"
  exit 1
fi
