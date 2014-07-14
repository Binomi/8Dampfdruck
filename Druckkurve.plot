reset
set terminal epslatex color
set output 'Druckkurve.tex'
set xlabel '$1/T~[\si{1/\celsius}]$'
set ylabel '$\ln(p)$'
#set xrange [0:*]

p 'messung1.dat' u (1/$1):(log($2)),\
'messung2.dat' u (1/$1):(log($2))

set output
!epstopdf Druckkurve.eps
set terminal windows
replot