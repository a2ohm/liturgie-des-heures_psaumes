\version "2.20.0"
\language "italiano"

stemOff = \hide Staff.Stem
stemOn  = \undo \stemOff

\header {
  %title = "Psaume 146"
  %tagline = ##f
  copyright = "Psalmodie du séminaire de Paris"
}

\score {
  \new Staff \with { \remove "Time_signature_engraver" }
  \relative
  {
    \key re \major
    \cadenzaOn
    \stemOff fad'\breve si1 \stemOn la4
    \bar "|"
    \stemOff la\breve mi1 \stemOn fad4
    \bar "|."
  }
}