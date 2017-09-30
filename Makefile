all:
	@find -name '*.tex' -printf 'output/%h\n' | sort | uniq | xargs mkdir -p
	@SOURCE_DATE_EPOCH=0 latexmk -xelatex -output-directory=output

clean:
	@rm -rf output/
