filepath  = "20181205_DeltaLog_clean.csv"

set datafile separator ','
set autoscale
set grid

set xdata time
set timefmt "%Y/%m/%d %H:%M:%S"
show timefmt
#set xrange ['2018/12/05 13:00:00':'2018/12/05 18:00:00']
set yrange [-10:20]


plot filepath using 1:3 with lines title 'DeltaLog'

pause -1
