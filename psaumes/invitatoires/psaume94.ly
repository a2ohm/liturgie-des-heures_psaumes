#(ly:set-option 'crop #t)
\version "2.20.0"
\language "italiano"

stemOff = \hide Staff.Stem
stemOn  = \undo \stemOff

\header {
  %title = "Psaume 94"
  %tagline = ##f
  copyright = "Psalmodie du séminaire de Paris"
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \chordmode { 
        re1 re1 la4
        la1 la1 la4
        la4 la1 la1 re4
        re4 re1 re1 si4:m
        si4:m si1:m si1:m re4
        re4 mi1:m mi1:m re4
      }
    }
    \new Staff \with { \remove "Time_signature_engraver" }
    \relative
    {
      \key re \major
      \cadenzaOn
      \stemOff re'1^\markup { 1 } fad1 \stemOn la4
      \bar "|"
      \stemOff la1^\markup { 2 } si1 \stemOn la4
      \bar "|"
      \stemOff la4^\markup { 3 } fad1 sold1 \stemOn fad4
      \bar "|"
      \stemOff fad4^\markup { 4 } mi1 fad1 \stemOn re4
      \bar "|"
      \stemOff si4^\markup { (5) } re1 mi1 \stemOn re4
      \bar "|"
      \stemOff re4^\markup { (6) } sol1 mi1 \stemOn re4
      \bar "|."
    }
  >>
}