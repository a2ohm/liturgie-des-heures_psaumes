#(ly:set-option 'crop #t)
\version "2.20.0"
\language "italiano"

stemOff = \hide Staff.Stem
stemOn  = \undo \stemOff

\header {
  %title = "Psaume 86"
  %tagline = ##f
  copyright = "Psalmodie du séminaire de Paris"
}

\score {
    <<
    \new ChordNames {
      \set chordChanges = ##t
      \chordmode { 
        re1:m re1:m sol4:m 
        sol1:m sol1:m fa4
      }
    }
    \new Staff \with { \remove "Time_signature_engraver" }
    \relative
    {
      \key fa \major
      \cadenzaOn
      \stemOff la'1 do1 \stemOn sib4
      \bar "|"
      \stemOff sib1 sol1 \stemOn la4
      \bar "||"
      \stemOff la1^\markup{+} \stemOn sol4
      \bar "|."
    }
  >>
}