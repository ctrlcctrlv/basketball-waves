SHELL=bash

.PHONY .ONESHELL: all
all:
	gnuplot basketball_in.plt
	xelatex -interaction=nonstopmode basketball.tex || true
	convert -density 750 basketball.pdf -background white -alpha remove -colors 21 +dither basketball.png
	convert basketball.png -unique-colors -scale 10000% palette.png
	for f in $$"palette" $$"basketball"; do (hash optipng 2>/dev/null && optipng $$f.png &); (hash cwebp 2>/dev/null && cwebp -lossless $$f.png -o $$f.webp &); done
