#!bin/bash

# This script runs pandoc to convert the markdown (.md) file into a
# beamer presentation with slides (.pdf) and then into a printable
# document (.pdf)

# -s: standalone document
# -t: output format
# -V: options for beamer
#   aspectratio: aspect ratio
# -o: output file
# -H: add a code snippet, here the latex preamble


pandoc -s -t beamer -V aspectratio:1610 -H preamble.tex -H display_notes.tex pres.md -o handout_with_notes_temp.pdf

pdflatex --jobname=handout_with_notes printable.tex

rm handout_with_notes_temp.pdf
rm *.aux
rm *.log
