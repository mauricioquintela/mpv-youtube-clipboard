# mpv-youtube-clipboard
Lua script to copy url of currently playing youtube video to the clipboard. Link is displayed as a confirmation. 

Configured for kde plasma, but portable to anything (xclip based command commented out on get_link.sh).

By default, the script is bound to "Ctrl + Shift + c".

# Installation

## GNU/Linux

* Clone repository in your scripts folder (usually "~/.config/mpv/scripts/"). 

* Modify main.lua to set the correct path to get_link.sh (has to be absolute path).

* Give execute permissions to get_link.sh (chmod +x get_link.sh).

* Update get_link.sh to use your clipboard manager of choice. Default is klipper (KDE Plasma), with xclipt version as a comment.


# Screenshot
![ss1](https://user-images.githubusercontent.com/39190784/124830911-7361ff00-df72-11eb-9ac2-16c17518b821.png)
