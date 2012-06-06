set xlabel "Subdivision level"
set ylabel "Normalised RMS Error"
set xr [0:180]
set yr [0.08:0.12]
set terminal png medium
set output "compression_ratio.png"
plot	"compression_ratio.dat" using 1:2 with linespoints
