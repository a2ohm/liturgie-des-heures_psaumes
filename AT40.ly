\version "2.20.0"
\language "italiano"

stemOff = \hide Staff.Stem
stemOn  = \undo \stemOff

\header {
  %title = "Cantique de l'Ancien Testament 40"
  %tagline = ##f
  copyright = "Psalmodie du séminaire de Paris"
}

\score {
  \new Staff \with { \remove "Time_signature_engraver" }
  \relative
  {
    \key sol \major
    \cadenzaOn
    \stemOff sol'\breve^\markup{ soliste } fad1 \stemOn sol4
    \bar "|"
    \stemOff si\breve^\markup{ TOUS } \stemOn la4
    \bar "|"
    \stemOff si\breve^\markup{ soliste } \stemOn sol4
    \bar "|"
    \stemOff la\breve^\markup{ TOUS } \stemOn si4
    \bar "|."
  }
}
