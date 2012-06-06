set xlabel "Subdivision level"
set ylabel "Log Normalised RMS Error"
set xr [2:6]
set yr [0.05:1]
set logscale y
set xtics 1
set terminal png medium
set output "compression.png"
plot	"compression.dat" using 1:2 title "Original" with linespoints, \
        "compression.dat" using 1:3 title "PNG" with linespoints, \
	"compression.dat" using 1:4 title "JPG 95%" with linespoints, \
	"compression.dat" using 1:5 title "JPG 75%" with linespoints, \
	"compression.dat" using 1:6 title "JPG 50%" with linespoints
