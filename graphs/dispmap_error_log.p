set xlabel "Subdivision level" "font=times"
set ylabel "Log Normalised RMS Error" "font=times"
set xr [0:6]
set yr [0.01:8]
set logscale y
set terminal png medium
set output "dispmap_error_log.png"
plot	"dispmap_error.dat" using 1:4 title "Cubehead" with linespoints, \
		"dispmap_error.dat" using 1:3 title "Monster" with linespoints, \
		"dispmap_error.dat" using 1:2 title "Horse" with linespoints, \
		"dispmap_error.dat" using 1:5 title "Bunny" with linespoints
