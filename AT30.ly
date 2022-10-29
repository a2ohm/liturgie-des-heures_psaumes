\version "2.20.0"
\language "italiano"

stemOff = \hide Staff.Stem
stemOn  = \undo \stemOff

\header {
  %title = "Cantique de l'Ancien Testament 30"
  %tagline = ##f
  copyright = "Psalmodie du séminaire de Paris"
}

\score {
  \new Staff \with { \remove "Time_signature_engraver" }
  \relative
  {
    \key sib \major
    \cadenzaOn
    \stemOff sol'\breve fa4 sol \stemOn la4
    \bar "|"
    \stemOff sol\breve fa1 \stemOn re4
    \bar "|."
  }
}