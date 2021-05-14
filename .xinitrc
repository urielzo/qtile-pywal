#!/bin/sh

#        ___                       ___                                   ___           ___     
#       /__/|        ___          /__/\        ___           ___        /  /\         /  /\    
#      |  |:|       /  /\         \  \:\      /  /\         /  /\      /  /::\       /  /:/    
#      |  |:|      /  /:/          \  \:\    /  /:/        /  /:/     /  /:/\:\     /  /:/     
#    __|__|:|     /__/::\      _____\__\:\  /__/::\       /  /:/     /  /:/~/:/    /  /:/  ___ 
#   /__/::::\____ \__\/\:\__  /__/::::::::\ \__\/\:\__   /  /::\    /__/:/ /:/___ /__/:/  /  /\
#      ~\~~\::::/    \  \:\/\ \  \:\~~\~~\/    \  \:\/\ /__/:/\:\   \  \:\/:::::/ \  \:\ /  /:/
#       |~~|:|~~      \__\::/  \  \:\  ~~~      \__\::/ \__\/  \:\   \  \::/~~~~   \  \:\  /:/ 
#       |  |:|        /__/:/    \  \:\          /__/:/       \  \:\   \  \:\        \  \:\/:/  
#       |  |:|        \__\/      \  \:\         \__\/         \__\/    \  \:\        \  \::/   
#       |__|/                     \__\/                                 \__\/         \__\/    

# this file is run when calling startx
# default arch init scripts
if [ -d /etc/X11/xinit/xinitrc.d ]; then
    for f in /etc/X11/xinit/xinitrc.d/?*.sh; do
        [ -x "$f" ] && . "$f"
    done
fi

# user init scripts and settings
[ -r /etc/X11/xinit/.Xmodmap ] && xmodmap /etc/X11/xinit/.Xmodmap
[ -r ~/.Xmodmap ] && xmodmap ~/.Xmodmap
[ -r ~/.Xresources ] && xrdb -merge ~/.Xresources
[ -r ~/.xprofile ] && . ~/.xprofile

# Some necessary startup
xset fp+ ~/.fonts/misc
dunst &
mpd &
walp &
qtile cmd-obj -o cmd -f restart

# launch the session, commands below this line will be ignored
exec qtile start
