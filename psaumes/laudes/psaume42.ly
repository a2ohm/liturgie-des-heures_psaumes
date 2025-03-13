\version "2.20.0"
\language "italiano"

stemOff = \hide Staff.Stem
stemOn  = \undo \stemOff

\header {
  %title = "Psaume 42"
  %tagline = ##f
  copyright = "Psalmodie du séminaire de Paris"
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \chordmode { 
        fa1 fa1 do4 
        sol1:m sol1:m fa4
      }
    }
    \new Staff \with { \remove "Time_signature_engraver" }
    \relative
    {
      \key fa \major
      \cadenzaOn
      \stemOff la'1 fa1 \stemOn sol4
      \bar "|"
      \stemOff sib1 sol1 \stemOn la4
      \bar "|."
    }
  >>
}