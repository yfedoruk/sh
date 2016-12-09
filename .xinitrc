#!/bin/bash

# set language toggle on Right WinKey
setxkbmap -option grp:rwin_toggle us,ru

#ukr on Alt + Shift
setxkbmap -option grp:alt_shift_toggle us,ua

# swap capsLock and escape
setxkbmap -option caps:swapescape


#reset: setxkbmap -option

# /etc/X11/xinit/xinitrc
#
# global xinitrc file, used by all X sessions started by xinit (startx)

# invoke global X session script
#. /etc/X11/Xsession

#exec openbox
