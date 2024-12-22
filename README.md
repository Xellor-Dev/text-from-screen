# text-from-screen
Simple copy text from screen 

```bash
#!/bin/bash

SCREENSHOT="/tmp/screenshot.png"
grim -g "$(slurp)" "$SCREENSHOT"
TEXT=$(tesseract "$SCREENSHOT" stdout -l rus+pol+ukr 2>/dev/null)
echo "$TEXT" | wl-copy
notify-send "Текст скопирован в буфер обмена."```
