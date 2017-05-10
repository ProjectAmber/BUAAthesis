all:
	@find -name '*.tex' -printf 'output/%h\n' | sort | uniq | xargs mkdir -p
	@latexmk -xelatex -output-directory=output

clean:
	@rm -rf output/
