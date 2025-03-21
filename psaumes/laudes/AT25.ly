#(ly:set-option 'crop #t)
\version "2.20.0"
\language "italiano"

stemOff = \hide Staff.Stem
stemOn  = \undo \stemOff

\header {
  %title = "Cantique de l'Ancien Testament 25"
  %tagline = ##f
  copyright = "Psalmodie du séminaire de Paris"
}

\score {
    <<
    \new ChordNames {
      \set chordChanges = ##t
      \chordmode { 
        fa1 fa4 re4:m 
        sol1:m sol1:m fa4
      }
    }
    \new Staff \with { \remove "Time_signature_engraver" }
    \relative
    {
      \key fa \major
      \cadenzaOn
      \stemOff la'1 sol4 \stemOn fa4
      \bar "|"
      \stemOff sol1 re1 \stemOn fa4
      \bar "||"
      \stemOff la1^\markup{+} \stemOn sol4
      \bar "|."
    }
  >>
}