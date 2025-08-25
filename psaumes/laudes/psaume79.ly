#(ly:set-option 'crop #t)
\version "2.20.0"
\language "italiano"

stemOff = \hide Staff.Stem
stemOn  = \undo \stemOff

\header {
  %title = "Psaume 79"
  %tagline = ##f
  copyright = "Psalmodie du séminaire de Paris"
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \chordmode { 
        re1:m re1:m re4:m 
        fa1 fa1 sol4:m
      }
    }
    \new Staff \with { \remove "Time_signature_engraver" }
    \relative
    {
      \key fa \major
      \cadenzaOn
      \stemOff la'1 sib1 \stemOn la4
      \bar "|"
      \stemOff la1 fa1 \stemOn sol4
      \bar "|."
    }
  >>
}
