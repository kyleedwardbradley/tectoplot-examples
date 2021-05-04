#!/bin/bash

echo "%TECTOPLOT: tectoplot -n -command -RJ Sg -80 -10 -t 10m -gres 120 -legend -title Stereo 80W/10S -pos 0i -6.5i -ips ./newtmp/map.ps -pss 5 -a l -o example2" >> map.ps
gmt gmtset PS_PAGE_ORIENTATION portrait PS_MEDIA 100ix100i
gmt gmtset MAP_FRAME_TYPE fancy MAP_FRAME_WIDTH 0.12c MAP_FRAME_PEN 0.5p,black
gmt gmtset FORMAT_GEO_MAP=D
gmt gmtset FONT_ANNOT_PRIMARY 10 FONT_LABEL 10 FONT_TITLE 12p,Helvetica,black
gmt gmtset FONT_ANNOT_PRIMARY 10 FONT_LABEL 10 FONT_TITLE 12p,Helvetica,black
