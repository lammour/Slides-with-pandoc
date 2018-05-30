#!bin/bash

# This script runs pandoc to convert the markdown (.md) file into a
# beamer presentation with slides (.pdf)

# -s: standalone document
# -t: output format
# -V: options for beamer
#   aspectratio: aspect ratio
# -o: output file
# -H: add a code snippet

# Without notes:
pandoc -s -t beamer -V aspectratio:1610 -H preamble.tex pres.md -o slides.pdf

# With notes:
pandoc -s -t beamer -V aspectratio:1610 -H preamble.tex -H display_notes.tex pres.md -o slides_with_notes.pdf
