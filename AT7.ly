\version "2.20.0"
\language "italiano"

stemOff = \hide Staff.Stem
stemOn  = \undo \stemOff

\header {
  %title = "Cantique de l'Ancien Testament 7"
  %tagline = ##f
  copyright = "Psalmodie du séminaire de Paris"
}

\score {
  \new Staff \with { \remove "Time_signature_engraver" }
  \relative
  {
    \key sol \major
    \cadenzaOn
    \stemOff re'\breve mi2 \stemOn sol4
    \bar "|"
    \stemOff sol\breve si2 \stemOn la4
    \bar "|"
    \stemOff sol\breve mi2 \stemOn sol4
    \bar "|."
  }
}