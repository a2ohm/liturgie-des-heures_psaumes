\version "2.20.0"
\language "italiano"

stemOff = \hide Staff.Stem
stemOn  = \undo \stemOff

\header {
  %title = "Psaume 136 (alternatif)"
  %tagline = ##f
  copyright = "Psalmodie du séminaire de Paris"
}

\score {
  \new Staff \with { \remove "Time_signature_engraver" }
  \relative
  {
    \key do \major
    ^\markup \italic "Autre Psalmodie"
    \cadenzaOn
    \stemOff la'\breve do1 \stemOn si4
    \bar "|"
    \stemOff la\breve sol1 \stemOn mi4
    \bar "|."
  }
}