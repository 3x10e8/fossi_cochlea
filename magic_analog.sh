#!/bin/bash
# launch magic from repo's base path so we can keep cell addresses relative to this path:
cd /local_disk/fossi_cochlea/mag/final_designs
magic -rcfile /local_disk/fossi_cochlea/dependencies/pdks/sky130B/libs.tech/magic/sky130B.magicrc &
# /isn/abhinav/fossi_cochlea/openlane/$1/runs/$1/results/final/mag/$1.mag

#magic -rcfile /usr/local/share/pdk/sky130A/libs.tech/magic/sky130A.magicrc ./fossi_cochlea/openlane/peripheral_gray/runs/peripheral_gray/results/final/mag/peripheral_gray.mag
#gedit /local_disk/fossi_cochlea/openlane/$1/config.tcl &
#gedit /local_disk/fossi_cochlea/openlane/$1/pin_order.cfg &
#gedit /local_disk/fossi_cochlea/openlane/$1/runs/$2/reports/manufacturability.rpt &

#magic -rcfile /local_disk/fossi_cochlea/dependencies/pdks/sky130B/libs.tech/magic/sky130B.magicrc /local_disk/fossi_cochlea/openlane/$1/runs/$2/results/final/mag/$1.mag &
