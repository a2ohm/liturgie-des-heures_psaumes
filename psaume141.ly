\version "2.20.0"
\language "italiano"

stemOff = \hide Staff.Stem
stemOn  = \undo \stemOff

\header {
  %title = "Psaume 141"
  %tagline = ##f
  copyright = "Psalmodie du séminaire de Paris"
}

\score {
  \new Staff \with { \remove "Time_signature_engraver" }
  \relative
  {
    \key la \major
    \cadenzaOn
    \stemOff la'\breve dod2 \stemOn si4
    \bar "|"
    \stemOff la\breve sold2 fad4 \stemOn la4
    \bar "|."
  }
}