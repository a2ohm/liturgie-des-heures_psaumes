\version "2.20.0"
\language "italiano"

stemOff = \hide Staff.Stem
stemOn  = \undo \stemOff

\header {
  %title = "Psaume 38"
  %tagline = ##f
  copyright = "Psalmodie du séminaire de Paris"
}

\score {
  \new Staff \with { \remove "Time_signature_engraver" }
  \relative
  {
    \key sol \major
    \cadenzaOn
    \stemOff si'\breve la4 \stemOn sol4
    \bar "|"
    \stemOff la\breve mi1 \stemOn sol4
    \bar "||"
    \stemOff si\breve^\markup{ + } \stemOn la4
    \bar "|."
  }
}