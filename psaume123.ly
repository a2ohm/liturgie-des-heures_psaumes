\version "2.20.0"
\language "italiano"

stemOff = \hide Staff.Stem
stemOn  = \undo \stemOff

\header {
  %title = "Psaume 123"
  %tagline = ##f
  copyright = "Psalmodie du séminaire de Paris"
}

\score {
  \new Staff \with { \remove "Time_signature_engraver" }
  \relative
  {
    \key sol \major
    \cadenzaOn
    \stemOff si'\breve la1 \stemOn si4 r1
    \bar "|"
    \stemOff si\breve sol1 \stemOn mi4
    \bar "||"
    \stemOff si'\breve^\markup{ + } \stemOn la4
    \bar "|."
  }
  \layout { }
  \midi {
    \tempo 1 = 120
  }
}