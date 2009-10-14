#!/bin/sh

FG='#cdcdcd'
BG='#3f3f3f'
FONT='-*-terminus-medium-r-normal-*-12-*-*-*-*-*-*-*'
#FONT='-artwiz-snap-*-*-*-*-*-*-*-*-*-*-*-*'
conky -c ~/.conkyrc-dzen | dzen2 -e - -w '1280' -ta r -fg $FG -bg $BG -fn $FONT

