\version "2.20.0"
\language "italiano"

stemOff = \hide Staff.Stem
stemOn  = \undo \stemOff

\header {
  %title = "Psaume 29"
  %tagline = ##f
  copyright = "Psalmodie du séminaire de Paris"
}

\score {
  \new Staff \with { \remove "Time_signature_engraver" }
  \relative
  {
    \key sol \minor
    \cadenzaOn
    \stemOff sol'\breve sib1 \stemOn la4
    \bar "|"
    \stemOff do\breve sib1 \stemOn sol4
    \bar "|."
  }
}