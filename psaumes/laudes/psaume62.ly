#(ly:set-option 'crop #t)
\version "2.20.0"
\language "italiano"

stemOff = \hide Staff.Stem
stemOn  = \undo \stemOff

\header {
  %title = "Psaume 62"
  %tagline = ##f
  copyright = "Psalmodie du séminaire de Paris"
}

\score {
    <<
    \new ChordNames {
      \set chordChanges = ##t
      \chordmode { 
        re1 re1 fad4:m 
        fad1:m mi4
        mi1 mi1 mi4
        mi1 mi1 fad4:m
      }
    }
    \new Staff \with { \remove "Time_signature_engraver" }
    \relative
    {
      \key la \major
      \cadenzaOn
      \stemOff fad'1 sold1 \stemOn la4
      \bar "|"
      \stemOff la1 \stemOn sold4
      \bar "|"
      \stemOff si1 la1 \stemOn sold4
      \bar "|"
      \stemOff sold1 la1 \stemOn fad4
      \bar "|."
    }
  >>
}