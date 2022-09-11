\version "2.20.0"
\language "italiano"

stemOff = \hide Staff.Stem
stemOn  = \undo \stemOff

\header {
  %title = "Cantique de l'Ancien Testament 6"
  %tagline = ##f
  copyright = "Psalmodie du séminaire de Paris"
}

\score {
  \new Staff \with { \remove "Time_signature_engraver" }
  \relative
  {
    \key re \major
    \cadenzaOn
    \stemOff fad'\breve sol1 \stemOn la4
    \bar "|"
    \stemOff re,\breve mi1 \stemOn fad4
    \bar "||"
    \stemOff fad\breve^\markup{ + } \stemOn mi4
    \bar "|."
  }
}