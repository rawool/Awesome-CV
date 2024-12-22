.PHONY: cv

CC = xelatex
CV_DIR = ./cv
OUTPUT_DIR = ./output
CV_SRCS = $(shell find $(CV_DIR) -name '*.tex')

cv.pdf: ./cv.tex $(CV_SRCS)
	$(CC) -output-directory=$(OUTPUT_DIR) $<

clean:
	rm -rf $(OUTPUT_DIR)/*.pdf
