\version "2.20.0"
\language "italiano"

stemOff = \hide Staff.Stem
stemOn  = \undo \stemOff

\header {
  %title = "Psaume 56"
  %tagline = ##f
  copyright = "Psalmodie du séminaire de Paris"
}

\score {
  \new Staff \with { \remove "Time_signature_engraver" }
  \relative
  {
    \key sol \major
    \cadenzaOn
    \stemOff la'\breve si1 \stemOn sol4
    \bar "|"
    \stemOff sol\breve fad1 \stemOn la4
    \bar "||"
    \stemOff la\breve^\markup{ + } \stemOn sol4
    \bar "|."
  }
}