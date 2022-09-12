# First argument: dir in final_designs
# Second argument: name of magic file
# Third argument: xschem filename (assumed already extracted to /lvs)
cd /local_disk/fossi_cochlea/mag/final_designs # move to the correct directory to make cell name show in extract 
magic -dnull -noconsole -rcfile /local_disk/fossi_cochlea/dependencies/pdks/sky130B/libs.tech/magic/sky130B.magicrc << EOF # launch magic without gui
box 0 0 0 0
load $1
select top cell
extract all
ext2spice lvs
ext2spice
EOF
mv $1.ext ext/
cd /local_disk/fossi_cochlea/lvs
mv /local_disk/fossi_cochlea/mag/final_designs/$1.spice ./$1_mag.spice
netgen -batch lvs "$2.spice $2" "$1_mag.spice $1" /local_disk/fossi_cochlea/dependencies/pdks/sky130B/libs.tech/netgen/sky130B_setup.tcl 
gedit comp.out &
