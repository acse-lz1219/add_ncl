begin
f_n2 = "mozart4geos5-20200807225525103932.nc"
f_n1 = "204_Pb.nc"
f = addfile(f_n1,"r")
var =  f->energy(0:19,(/0,359/),:)
lat1 = f->lat((/0,359/))
lon1 = f->lon
f = addfile(f_n2,"r")
lat2 = f->lat
lon2 = f->lon

var_i = linint2_Wrap(lon1,lat1,var,False,lon2,lat2,0)

f = addfile(f_n2,"w")
f->PB_VMR_inst = var_i
end