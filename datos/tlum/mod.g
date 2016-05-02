#set terminal epslatex size 18cm,12cm color colortext
#set output '../graf1.tex'

set title
set xlabel ''
set ylabel ''
set grid x,y
set yrange[0:0.8]
set xrange[0:30]

modr(x) = a * exp(-delta*x)
fit modr(x) 'modrejtlum' via a, delta

plot modr(x), 'modrejtlum'


set terminal wxt
set output
