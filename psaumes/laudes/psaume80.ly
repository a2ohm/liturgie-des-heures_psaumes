#(ly:set-option 'crop #t)
\version "2.20.0"
\language "italiano"

stemOff = \hide Staff.Stem
stemOn  = \undo \stemOff

\header {
  %title = "Psaume 80"
  %tagline = ##f
  copyright = "Psalmodie du séminaire de Paris"
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \chordmode { 
        mib1 mib1 do4:m 
        do1:m sib1 mib4
      }
    }
    \new Staff \with { \remove "Time_signature_engraver" }
    \relative
    {
      \key mib \major
      \cadenzaOn
      \stemOff sib'1 do1 \stemOn sol4
      \bar "|"
      \stemOff sol1 fa1 \stemOn sol4
      \bar "||"
      \stemOff sib1^\markup{+} \stemOn sol4
      \bar "|."
    }
  >>
}
