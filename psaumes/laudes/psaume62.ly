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
  \new Staff \with { \remove "Time_signature_engraver" }
  \relative
  {
    \key la \major
    \cadenzaOn
    \stemOff fad'\breve sold1 \stemOn la4
    \bar "|"
    \stemOff la\breve \stemOn sold4
    \bar "|"
    \stemOff si\breve la1 \stemOn sold4
    \bar "|"
    \stemOff sold\breve la1 \stemOn fad4
    \bar "|."
  }
}