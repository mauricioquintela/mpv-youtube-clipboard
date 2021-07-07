#!/usr/bin/zsh
echo -n $1 | xargs qdbus org.kde.klipper /klipper org.kde.klipper.klipper.setClipboardContents
#echo -n $1 | xclip -selection clipboard
