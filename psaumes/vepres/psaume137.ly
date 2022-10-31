\version "2.20.0"
\language "italiano"

stemOff = \hide Staff.Stem
stemOn  = \undo \stemOff

\header {
  %title = "Psaume 137"
  %tagline = ##f
  copyright = "Psalmodie du séminaire de Paris"
}

\score {
  \new Staff \with { \remove "Time_signature_engraver" }
  \relative
  {
    \key do \major
    \cadenzaOn
    \stemOff la'\breve \stemOn sol4
    \bar "|"
    \stemOff la\breve \stemOn si4
    \bar "|"
    \stemOff la\breve sol4 \stemOn fa4
    \bar "|"
    \stemOff la\breve sol4 \stemOn mi4
    \bar "|."
  }
}