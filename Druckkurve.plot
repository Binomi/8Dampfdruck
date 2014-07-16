reset
set terminal epslatex color
set output 'Erwaermen.tex'
set xlabel '$1/T~[\si{10^{-3}/\kelvin}]$'
set ylabel '$\ln(\frac{p}{p_0})$'
set key top right

f(x)=m*x+b

set fit logfile 'Erwaermen.log'
fit f(x) 'messung1.dat' u (1000/$1):(log($2)) via m,b
p 'messung1.dat' u (1000/$1):(log($2)):($3/$1**2):($4/$2) w xye t'Messwerte' ,\
f(x) lt -1 t'Regressionsgerade'

set output
!epstopdf Erwaermen.eps

set output 'Abkuehlen.tex'

set fit logfile 'Abkuehlen.log'
fit f(x) 'messung2.dat' u (1000/$1):(log($2)) via m,b
p 'messung2.dat' u (1000/$1):(log($2)):($3/$1**2):($4/$2) w xye t'Messwerte',\
f(x) lt -1 t'Regressionsgerade'

set output
!epstopdf Abkuehlen.eps
