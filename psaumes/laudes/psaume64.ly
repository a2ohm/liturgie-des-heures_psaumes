#(ly:set-option 'crop #t)
\version "2.20.0"
\language "italiano"

stemOff = \hide Staff.Stem
stemOn  = \undo \stemOff

\header {
  %title = "Psaume 64"
  %tagline = ##f
  copyright = "Psalmodie du séminaire de Paris"
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \chordmode { 
        re1 sol1 re4 
        si1:m la1 re4
      }
    }
    \new Staff \with { \remove "Time_signature_engraver" }
    \relative
    {
      \key re \major
      \cadenzaOn
      \stemOff la'1 si1 \stemOn la4
      \bar "|"
      \stemOff fad1 mi1 \stemOn fad4
      \bar "|."
    }
  >>
}
