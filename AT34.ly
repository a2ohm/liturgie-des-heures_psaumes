\version "2.20.0"
\language "italiano"

\header {
  %title = "Cantique de l'Ancien Testament 34"
  %tagline = ##f
  copyright = "Psalmodie du séminaire de Paris"
}

stemOff = \hide Staff.Stem
stemOn  = \undo \stemOff

\score {
  \new Staff \with { \remove "Time_signature_engraver" }
  \relative
  {
    \key sol \major
    \cadenzaOn
    \stemOff sol'\breve \stemOn fad4
    \bar "|"
    \stemOff la\breve sol1 \stemOn fad4
    \bar "||"
    \stemOff sol\breve^\markup{ + } \stemOn mi4
    \bar "|."
  }
}