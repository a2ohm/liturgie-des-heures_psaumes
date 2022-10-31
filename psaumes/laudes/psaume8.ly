\version "2.20.0"
\language "italiano"

stemOff = \hide Staff.Stem
stemOn  = \undo \stemOff

\header {
  %title = "Psaume 8"
  %tagline = ##f
  copyright = "Psalmodie du séminaire de Paris"
}

\score {
  \new Staff \with { \remove "Time_signature_engraver" }
  \relative
  {
    \key re \major
    \cadenzaOn
    \stemOff re'\breve fad1 \stemOn la4
    \bar "|"
    \stemOff la\breve si1 \stemOn la4
    \bar "|"
    \stemOff la4 fad\breve sold1 \stemOn fad4
    \bar "|"
    \stemOff fad mi\breve fad1 \stemOn re4
    \bar "|."
  }
}