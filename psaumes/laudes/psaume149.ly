#(ly:set-option 'crop #t)
\version "2.20.0"
\language "italiano"

stemOff = \hide Staff.Stem
stemOn  = \undo \stemOff

\header {
  %title = "Psaume 149"
  %tagline = ##f
  copyright = "Psalmodie du séminaire de Paris"
}

\score {
    <<
    \new ChordNames {
      \set chordChanges = ##t
      \chordmode { 
        fa1 fa1 re4:m 
        do1 do1 re4:m 
        sol1:m sol1:m do4
        do1 do1 fa4
        re1:m re1:m fa4
        do1 do1 fa4
      }
    }
    \new Staff \with { \remove "Time_signature_engraver" }
    \relative
    {
      \key fa \major
      \cadenzaOn
      \stemOff la'1 sol1 \stemOn fa4
      \bar "|"
      \stemOff do'1 sib1 \stemOn la4
      \bar "|"
      \stemOff re1 do1 \stemOn sib4
      \bar "|"
      \stemOff do1 sib1 \stemOn la4
      \bar "|"
      \stemOff re,1 mi1 \stemOn fa4
      \bar "|"
      \stemOff do'1 sib1 \stemOn la4
      \bar "|."
    }
  >>
}