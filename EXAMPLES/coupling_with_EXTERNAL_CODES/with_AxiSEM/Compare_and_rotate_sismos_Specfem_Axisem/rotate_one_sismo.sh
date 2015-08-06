# convert cartesian specfem sismo in ENZ coordinate system



# to be found in last line of model1D_in
ZB=6120505.36002571


# Station coordinate (to be choosen in STATIONS_Axisem)
st_long=57.2500
st_lat=-1.2500 
radius=6371.

echo "  " $radius  "  " $st_lat  "  " $st_long > stations_to_convert.txt 

# specfem sismograms
CX=Sismo_specfem/SY.S0001.BXX.semd
CY=Sismo_specfem/SY.S0001.BXY.semd
CZ=Sismo_specfem/SY.S0001.BXZ.semd

# name of output file of transformed specfem sismogram
OUT=SY.S0001.ENZ.semd

./xrotation_specfem_solution<<EOF
$ZB
$CX 
$CY
$CZ
$OUT
EOF
