\version "2.20.0"
\language "italiano"

stemOff = \hide Staff.Stem
stemOn  = \undo \stemOff

\header {
  %title = "Cantique de l'Ancien Testament 4"
  %tagline = ##f
  copyright = "Psalmodie du séminaire de Paris"
}

\score {
  \new Staff \with { \remove "Time_signature_engraver" }
  \relative
  {
    \key la \major
    \cadenzaOn
    \stemOff mi'\breve fad1 \stemOn la4
    \bar "|"
    \stemOff la\breve dod1 \stemOn si4
    \bar "|"
    \stemOff la\breve fad1 \stemOn la4
    \bar "|."
  }
}