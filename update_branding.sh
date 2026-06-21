#!/bin/bash
# AutoKaaj Branding Automation
echo "# AutoKaaj AI OS" > README.md
echo "![AutoKaaj Logo](https://raw.githubusercontent.com/gameonzone5-lab/AutoKaajj-OS/main/logo.png)" >> README.md
echo "" >> README.md
echo "Welcome to the professional AI environment by Chiranjit Majumdar." >> README.md
echo "Stay updated with AutoKaaj." >> README.md
git add README.md
git commit -m "Auto-updated branding and README via script"
git push
