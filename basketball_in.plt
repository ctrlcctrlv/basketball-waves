#!/usr/bin/env gnuplot

set term tikz
set output "basketball_in.tex"
set xrange [0:440]
set samples 10000
plot -5+((cos((0.05*pi*x)+sin(0.05*pi*x)))*2), 0, 5+((sin((0.05*pi*x+5)+cos(0.05*pi*x+5)))*2)

# vim: set filetype=gnuplot:
