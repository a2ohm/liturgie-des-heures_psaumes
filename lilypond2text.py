#!/usr/bin/python3
# -*- coding:utf-8 -*-

# Do some black magic to convert a psalmody from lilypond to raw text
# usage: ./lilypond2text.py psalmody.ly

import sys
import re

pnote = re.compile(r"^([a-z]+)([',]*)(\d?)")
pflex = re.compile(r"\^\\markup\{\s?\+\s?\}")
pmarkup = re.compile(r"\^\\markup\{\s?\w+\s?\}")

record = False
psalmodie = []
octave = 3
lastNote = "fa"

englishNotes = {
    "do": "C",
    "dod": "C#",
    "re": "D",
    "mi": "E",
    "mib": "Eb",
    "fa": "F",
    "fad": "F#",
    "sol": "G",
    "sold": "G#",
    "la": "A",
    "lab": "Ab",
    "si": "B",
    "sib": "Bb",
}

noteValues = {
    "do": 1,
    "dod": 2,
    "re": 3,
    "mib": 4,
    "mi": 5,
    "fa": 6,
    "fad": 7,
    "sol": 8,
    "sold": 9,
    "lab": 9,
    "la": 10,
    "sib": 11,
    "si": 12,
}

octaveValues = {
    "'": 1,
    ",": -1,
}

# Open and read the lilypond file without any precautions
with open(sys.argv[1], 'r') as f:
    rawLilypond = f.readlines()

for line in rawLilypond:
    if line.strip() == '}':
        record = False;

    if record:
        # The lilypond file should be formated to have notes between a pair of braces
        # Example:
        #   [...]
        #   \relative
        #   {
        #     \key sib \major
        #     \cadenzaOn
        #     \stemOff sol'\breve sib1 \stemOn la4
        #     \bar "|"
        #     \stemOff sol\breve fa1 \stemOn re4
        #     \bar "||"
        #     \stemOff sol\breve^\markup{ + } \stemOn fa4
        #     \bar "|."
        #   }
        #   [...]

        # Skip flex
        f = pflex.findall(line)
        if f:
            continue
        
        # Remove markup
        line = pmarkup.sub("", line)
        l = line.strip().split(" ")

        # Assert: only lines starting with "\stemOff" contain notes
        if l[0] == "\stemOff":
            lineOfNotes = []

            for idx, n in enumerate(l):
                m = pnote.match(n)

                if m:
                    # Use english notation
                    note = englishNotes[m.group(1)]
                    # Assert: relative notation used in the lilypond file
                    # But octave have to be explicit in raw text
                    octave += int((noteValues[lastNote] - noteValues[m.group(1)])/6) + octaveValues.get(m.group(2), 0)
                    # All notes have the same duration but black notes
                    # The duraction of the last note should not be altered
                    duration = "-" if m.group(3) == "4" and idx != len(l) - 1 else ""

                    lineOfNotes.append("{}{}{}".format(note, octave, duration))

                    lastNote = m.group(1)
        
            if lineOfNotes:
                # Concatenate notes from this line
                psalmodie.append(" ".join(lineOfNotes))
    
    if line.strip() == '{':
        record = True;

# Measures are separated with a "/"
print("/".join(psalmodie))