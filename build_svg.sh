#!/bin/sh

# Build a svg from a lilypond file
# usage: ./build_svg OFFICE PSALM_NUMBER

# PARAMETERS
options_svg="--loglevel=ERROR -dcrop -dbackend=svg -dno-point-and-click"
office=$1
psalm=$2

# BUILD
lilypond $options_svg -o "build/psaumes/${office}/svg/${psalm}_psalmodie" "psaumes/${office}/${psalm}.ly"
cd "./build/psaumes/${office}/svg/"
mv "${psalm}_psalmodie.cropped.svg" "${psalm}_psalmodie.svg"