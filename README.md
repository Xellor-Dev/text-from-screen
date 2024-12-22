# text-from-screen
Simple copy text from screen 

```bash
#!/bin/bash

SCREENSHOT="/tmp/screenshot.png"
grim -g "$(slurp)" "$SCREENSHOT"
TEXT=$(tesseract "$SCREENSHOT" stdout -l ukr 2>/dev/null)
echo "$TEXT" | wl-copy
notify-send "Text was copy from screen."
```


You need to install this packages (Arch Linux)

`
test
`
