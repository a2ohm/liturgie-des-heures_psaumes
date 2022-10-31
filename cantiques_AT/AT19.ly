\version "2.20.0"
\language "italiano"

stemOff = \hide Staff.Stem
stemOn  = \undo \stemOff

\header {
  %title = "Cantique de l'Ancien Testament 19"
  %tagline = ##f
  copyright = "Psalmodie du séminaire de Paris"
}

\score {
  \new Staff \with { \remove "Time_signature_engraver" }
  \relative
  {
    \key sib \major
    \cadenzaOn
    \stemOff sol'\breve sib1 \stemOn la4
    \bar "|"
    \stemOff la\breve sol1 fa4 \stemOn sol4
    \bar "||"
    \stemOff sol\breve^\markup{ + } \stemOn fa4
    \bar "|."
  }
}