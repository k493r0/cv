all: one-gen two-gen two-swe one-sec f

op: ./onepage/main.tex
	mkdir -p ./onepage/out
	pdflatex -jobname=onepage --output-directory=./onepage/out ./onepage/main.tex

tp: ./twopage/main.tex
	mkdir -p ./twopage/out
	pdflatex -jobname=twopage --output-directory=./twopage/out ./twopage/main.tex

one-sec: ./onepage-security/main.tex
	pdflatex -jobname=onepage-security --output-directory=./onepage-security/out ./onepage-security/main.tex

two-swe: ./twopage-swe/main.tex
	pdflatex -jobname=twopage-swe --output-directory=./twopage-swe/out ./twopage-swe/main.tex

two-gen: ./twopage-generic/main.tex
	pdflatex -jobname=twopage-generic  --output-directory=./twopage-generic/out ./twopage-generic/main.tex

one-gen: ./onepage-generic/main.tex
	pdflatex -jobname=onepage-generic --output-directory=./onepage-generic/out ./onepage-generic/main.tex

f: ./full/main.tex
	pdflatex -jobname=full --output-directory=./full/out ./full/main.tex

clean:
	rm -rf ./onepage-generic/out/* ./twopage-generic/out/* ./twopage-swe/out/* ./onepage-security/out/* ./full/out/*
