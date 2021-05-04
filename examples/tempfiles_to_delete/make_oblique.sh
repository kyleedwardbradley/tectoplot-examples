#!/bin/sh
if [[ $# -ge 1 ]]; then
  OBLIQUE_VEXAG=${1}
else
  OBLIQUE_VEXAG=1
fi
if [[ $# -ge 2 ]]; then
  OBLIQUEAZ=${2}
else
  OBLIQUEAZ=135
fi
if [[ $# -ge 3 ]]; then
  OBLIQUEINC=${3}
else
  OBLIQUEINC=25
fi
if [[ $# -ge 4 ]]; then
  OBLIQUERES=${4}
else
  OBLIQUERES=300
fi
DELTAZ_IN=$(echo "${OBLIQUE_VEXAG} * 5 * (6388.000000 - -10499.500000)/ ( (180 - -180) * 111000 )"  | bc -l)
gmt grdview /Users/kylebradley/Dropbox/TectoplotData/EARTHRELIEF/10m_-180_180_-90_90.nc -G/Users/kylebradley/Dropbox/scripts/tectoplot_examples/examples/tempfiles_to_delete/topo/colored_relief.tif -Rg -JS-80/-10/90/5i -JZ${DELTAZ_IN}i  -Qi${OBLIQUERES}  -p${OBLIQUEAZ}/${OBLIQUEINC} --GMT_HISTORY=false --MAP_FRAME_TYPE=plain -Ve > oblique.ps
gmt psconvert oblique.ps -Tf -A0.5i --GMT_HISTORY=false -Ve
