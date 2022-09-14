# First argument: dir in final_designs
# Second argument: name of magic file
# Third argument: xschem filename (assumed already extracted to /lvs)
cd /local_disk/fossi_cochlea/mag/final_designs # move to the correct directory to make cell name show in extract 
magic -dnull -noconsole -rcfile /local_disk/fossi_cochlea/dependencies/pdks/sky130B/libs.tech/magic/sky130B.magicrc << EOF # launch magic without gui
box 0 0 0 0
load $1
select top cell
#extract all
lef write
#def write
gds
EOF
#mv $1.ext ext/
mv $1.lef /local_disk/fossi_cochlea/lef/
#mv $1.def /local_disk/fossi_cochlea/def/
mv $1.gds /local_disk/fossi_cochlea/gds/
