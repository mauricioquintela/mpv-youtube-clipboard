# mpv-youtube-clipboard
Lua script to copy filename of currently playing video to the clipboard. Filename is displayed as a confirmation. 
If filename is an youtube link (beginning by "watch?v="), it gets processed into a full youtube url. 

Default configuration uses xclip. Kde plasma configuration available as a comment in the file.

By default, the script is bound to "Ctrl + Shift + c".

Based on [mpv-copyTime](https://github.com/Arieleg/mpv-copyTime) and [showfilename](https://github.com/yuukidach/mpv-scripts).

# Installation

## GNU/Linux

* Clone repository in your scripts folder (usually "~/.config/mpv/scripts/").

* Modify main.lua to set the correct path to get_link.sh (has to be absolute path).

* Give execute permissions to get_link.sh (chmod +x get_link.sh).

* Update get_link.sh to use your clipboard manager of choice. Default is xclip, with klipper (KDE Plasma) version as a comment.


# Screenshot
![ss1](https://user-images.githubusercontent.com/39190784/124938060-e1a0d300-dfff-11eb-94a3-45b95e9710c5.png)
