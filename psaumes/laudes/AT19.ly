#(ly:set-option 'crop #t)
\version "2.20.0"
\language "italiano"

stemOff = \hide Staff.Stem
stemOn  = \undo \stemOff

\header {
  %title = "Cantique de l'Ancien Testament 19"
  %tagline = ##f
  copyright = "Psalmodie du séminaire de Paris"
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \chordmode { 
        sol1:m sol1:m re4:m 
        re1:m do1:m sol4:m
      }
    }
    \new Staff \with { \remove "Time_signature_engraver" }
    \relative
    {
      \key sib \major
      \cadenzaOn
      \stemOff sol'1 sib1 \stemOn la4
      \bar "|"
      \stemOff la1 sol1 fa4 \stemOn sol4
      \bar "||"
      \stemOff sol1^\markup{ + } \stemOn fa4
      \bar "|."
    }
  >>
}
