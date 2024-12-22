#!/bin/bash

SCREENSHOT="/tmp/screenshot.png"
grim -g "$(slurp)" "$SCREENSHOT"
TEXT=$(tesseract "$SCREENSHOT" stdout -l ukr 2>/dev/null)
echo "$TEXT" | wl-copy
notify-send "Copy text from screen."
