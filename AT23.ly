\version "2.20.0"
\language "italiano"

stemOff = \hide Staff.Stem
stemOn  = \undo \stemOff

\header {
  %title = "Cantique de l'Ancien Testament 23"
  %tagline = ##f
  copyright = "Psalmodie du séminaire de Paris"
}

\score {
  \new Staff \with { \remove "Time_signature_engraver" }
  \relative
  {
    \cadenzaOn
    \stemOff mi'\breve sol1 \stemOn la4
    \bar "|"
    \stemOff la\breve sol1 fa4 \stemOn mi4
    \bar "||"
    \stemOff mi\breve^\markup{ + } \stemOn re4
    \bar "|."
  }
}