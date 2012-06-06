set xlabel "Subdivision level"
set ylabel "Log Normalised RMS Error"
set xr [2:6]
set yr [0.05:1]
set logscale y
set xtics 1
set terminal png medium
set output "imagesize.png"
plot	"imagesize.dat" using 1:2 title "256x256" with linespoints, \
		"imagesize.dat" using 1:3 title "512x512" with linespoints, \
		"imagesize.dat" using 1:4 title "1024x1024" with linespoints
