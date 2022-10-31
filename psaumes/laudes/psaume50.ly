\version "2.20.0"
\language "italiano"

stemOff = \hide Staff.Stem
stemOn  = \undo \stemOff

\header {
  %title = "Psaume 50"
  %tagline = ##f
  copyright = "Psalmodie du séminaire de Paris"
}

\score {
  \new Staff \with { \remove "Time_signature_engraver" }
  \relative
  {
    \key sol \major
    \cadenzaOn
    \stemOff sol'\breve \stemOn mi4
    \bar "|"
    \stemOff sol\breve mi4 sol4 \stemOn la4
    \bar "|"
    \stemOff si\breve sol1 \stemOn la4
    \bar "|"
    \stemOff la\breve sol1 \stemOn mi4
    \bar "|."
  }
}