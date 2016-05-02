#set terminal epslatex size 18cm,12cm color colortext
#set output '../graf1.tex'

set title
set xlabel ''
set ylabel ''
set grid x,y
set yrange[-0.8:0.8]
set xrange[0:30]

f(x) = a1 * exp(-delta1*x) + b1
fit f(x) 'modrejtlum.dat' via a1, delta1, b1

#g(x) = a2 * exp(-delta2*x) + b2
#fit g(x) 'modrejtlum.dat' index 1 u 1:(-$2) via a2, delta2, b2

plot f(x), 'modrejtlum.dat'

pr ''
pr 'delta, a , b'
pr ''
pr delta1
pr a1
pr b1


set terminal wxt
set output
