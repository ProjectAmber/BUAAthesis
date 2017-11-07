robocopy /mir . output /xf * /xd output > nul
latexmk -xelatex -output-directory=output
