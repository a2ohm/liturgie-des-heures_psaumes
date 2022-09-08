\version "2.20.0"
\language "italiano"

stemOff = \hide Staff.Stem
stemOn  = \undo \stemOff

\header {
  %title = "Psaume 35"
  %tagline = ##f
  copyright = "Psalmodie du séminaire de Paris"
}

\score {
  \new Staff \with { \remove "Time_signature_engraver" }
  \relative
  {
    \key fa \major
    \cadenzaOn
    \stemOff la'\breve sib4 la4 \stemOn sol4
    \bar "|"
    \stemOff sol\breve fa4 re4\stemOn fa4
    \bar "||"
    \stemOff la\breve^\markup{ + } \stemOn sol4
    \bar "|."
  }
}