#!/bin/sh

# Build a midi from a lilypond file
# usage: ./build_svg OFFICE PSALM

# PARAMETERS
options_midi="--loglevel=ERROR -dbackend=midi"
office=$1
psalm=$2

tempo_default=90
tempo="${3:-$tempo_default}"

# BUILD
# Add the midi section
sed -e 's/\\score {/\\score { \\midi { \\tempo 1 = '$tempo' }/g' "psaumes/${office}/${psalm}.ly" | \
# Remove flex \
sed '/\+/d' | \
# Add rest before bars \
sed 's/\\bar "|"/r1 \\bar "|"/g' | \
# Longer \
sed 's/\\breve/1/g' | \
sed 's/4$/2/g' | \
#sed 's/4/2/g' | \
lilypond $options_midi -o "build/psaumes/${office}/midi/${psalm}_psalmodie" -;