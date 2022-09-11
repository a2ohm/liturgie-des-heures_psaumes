\version "2.20.0"
\language "italiano"

stemOff = \hide Staff.Stem
stemOn  = \undo \stemOff

\header {
  %title = "Psaume 113B"
  %tagline = ##f
  copyright = "Psalmodie du séminaire de Paris"
}

\score {
  \new Staff \with { \remove "Time_signature_engraver" }
  \relative
  {
    \key do \major
    \cadenzaOn
    \stemOff la'\breve do1 \stemOn la4
    \bar "|"
    \stemOff la\breve sol1 fa4 \stemOn re4
    \bar "||"
    \stemOff la'\breve^\markup{ + } \stemOn sol4
    \bar "|."
  }
}