#!/bin/sh

# Build a svg from a lilypond file
# usage: ./build_svg OFFICE PSALM_NUMBER

# PARAMETERS
options_svg="--loglevel=ERROR -dcrop -dbackend=svg -dno-point-and-click"
office=$1
psalm=$2

# BUILD
lilypond $options_svg -o "build/psaumes/${office}/svg/${psalm}_psalmodie" "psaumes/${office}/${psalm}.ly"

# Get psalmody
psalmodie=$(./lilypond2text.py psaumes/${office}/${psalm}.ly)

# Rename svg file
cd "./build/psaumes/${office}/svg/"
mv "${psalm}_psalmodie.cropped.svg" "${psalm}_psalmodie.svg"

# Add psalmody in svg metadata
metadata="<metadata>\n<description id='psalmodie'>${psalmodie}</description>\n</metadata>\n</svg>"

sed -i '$ d' "${psalm}_psalmodie.svg"
echo $metadata >> "${psalm}_psalmodie.svg"