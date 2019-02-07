filepath  = "20181205_ESL_S1_clean.csv"

set datafile separator ','
set autoscale
set grid

set xdata time
set timefmt "%m.%d.%y %H:%M:%S "
show timefmt
set xrange ['12.05.18 13:00:00':'12.05.18 18:00:00']
set yrange [-10:10]

# output format
#set format x "%m-%d"

plot filepath using (timecolumn(2) + 43200):($4-32)*.55 with lines title 't_{amb}'

pause -1
