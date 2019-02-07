set datafile separator ','
set autoscale
set grid

set xdata time

#set xrange ['12.05.18 13:00:00':'12.05.18 18:00:00']
set yrange [-10:10]

# output format
#set format x "%m-%d"



plot '20181205_ESL_S1_clean.csv' using (timecolumn(2, '%m.%d.%y %H:%M:%S ')+ 43200):($4-32)*.55 with lines title 't_{amb} hobo','20181205_DeltaLog_clean.csv' using (timecolumn(1, '%Y/%m/%d %H:%M:%S')):4 with lines title 't_{amb} deltalog','20181205_DeltaLog_clean.csv' using (timecolumn(1, '%Y/%m/%d %H:%M:%S')):3 with lines title 't_{globe} deltalog', '20181205_ESL_S1_clean.csv' using (timecolumn(2, '%m.%d.%y %H:%M:%S ')+ 43200):($6-32)*.55 with lines title 't_{globe} hobo'

pause -1
