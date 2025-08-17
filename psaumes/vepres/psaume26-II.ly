\version "2.20.0"
\language "italiano"

stemOff = \hide Staff.Stem
stemOn  = \undo \stemOff

\header {
  %title = "Psaume 26"
  %tagline = ##f
  copyright = "Psalmodie du séminaire de Paris"
}

\score {
  \new Staff \with { \remove "Time_signature_engraver" }
  \relative
  {
    \key re \major
    \cadenzaOn
    \stemOff si'\breve la1 \stemOn si4
    \bar "|"
    \stemOff si\breve la1 sol4 \stemOn fad4
    \bar "||"
    \stemOff si\breve^\markup{ + } \stemOn la4
    \bar "|."
  }
}