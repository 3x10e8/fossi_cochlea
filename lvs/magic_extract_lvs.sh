# First argument: dir in final_designs
# Second argument: name of magic file
# Third argument: xschem filename (assumed already extracted to /lvs)
cd /local_disk/fossi_cochlea/mag/final_designs/$1 # move to the correct directory to make cell name show in extract 
magic -dnull -noconsole -rcfile /local_disk/fossi_cochlea/dependencies/pdks/sky130B/libs.tech/magic/sky130B.magicrc << EOF # launch magic without gui
box 0 0 0 0
load $2
select top cell
extract all
ext2spice lvs
ext2spice
EOF
pwd
ls
cd /local_disk/fossi_cochlea/lvs
mv /local_disk/fossi_cochlea/mag/final_designs/$1/$2.spice .
netgen -batch lvs "$3.spice $3" "$2.spice $2" /local_disk/fossi_cochlea/dependencies/pdks/sky130B/libs.tech/netgen/sky130B_setup.tcl 
gedit comp.out &
