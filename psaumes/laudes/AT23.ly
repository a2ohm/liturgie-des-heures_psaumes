#(ly:set-option 'crop #t)
\version "2.20.0"
\language "italiano"

stemOff = \hide Staff.Stem
stemOn  = \undo \stemOff

\header {
  %title = "Cantique de l'Ancien Testament 23"
  %tagline = ##f
  copyright = "Psalmodie du séminaire de Paris"
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \chordmode { 
        do1 do1 fa4 
        re1:m sol1 sol4 do4
      }
    }
    \new Staff \with { \remove "Time_signature_engraver" }
    \relative
    {
      \key do \major
      \cadenzaOn
      \stemOff mi'1 sol1 \stemOn la4
      \bar "|"
      \stemOff la1 sol1 fa4 \stemOn mi4
      \bar "||"
      \stemOff mi1^\markup{ + } \stemOn re4
      \bar "|."
    }
  >>
}
