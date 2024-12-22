# text-from-screen
Simple copy text from screen 

```bash
#!/bin/bash

SCREENSHOT="/tmp/screenshot.png"
grim -g "$(slurp)" "$SCREENSHOT"
TEXT=$(tesseract "$SCREENSHOT" stdout -l eng 2>/dev/null)
echo "$TEXT" | wl-copy
notify-send "Text was copy from screen."
```


You need to install this packages (Arch Linux)

```
sudo pacman -S grim slurp tesseract tesseract-data-eng wl-clipboard
```

How add support for other languages? - Easy

Example of adding Ukrainian language support
```
sudo pacman -S tesseract-data-ukr
```

Show other language support list

```
pacman -Ss tesseract-data-
```

