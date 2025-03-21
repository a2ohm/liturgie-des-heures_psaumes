#(ly:set-option 'crop #t)
\version "2.20.0"
\language "italiano"

stemOff = \hide Staff.Stem
stemOn  = \undo \stemOff

\header {
  %title = "Psaume 98"
  %tagline = ##f
  copyright = "Psalmodie du séminaire de Paris"
}

\score {
    <<
    \new ChordNames {
      \set chordChanges = ##t
      \chordmode { 
        la1:m la1:m mi4:m 
        re1:m mi1:m la4:m
      }
    }
    \new Staff \with { \remove "Time_signature_engraver" }
    \relative
    {
      \key do \major
      \cadenzaOn
      \stemOff la'1 do1 \stemOn si4
      \bar "|"
      \stemOff la1 sol1 \stemOn mi4
      \bar "||"
      \stemOff la1^\markup{ + } \stemOn sol4
      \bar "|."
    }
  >>
}
