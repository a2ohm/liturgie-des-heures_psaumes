\version "2.20.0"
\language "italiano"

stemOff = \hide Staff.Stem
stemOn  = \undo \stemOff

\header {
  %title = "Psaume 71"
  %tagline = ##f
  copyright = "Psalmodie du séminaire de Paris"
}

\score {
  \new Staff \with { \remove "Time_signature_engraver" }
  \relative
  {
    \key fa \major
    \cadenzaOn
    \stemOff la'\breve do2 \stemOn la4
    \bar "|"
    \stemOff la\breve sol2 \stemOn la4
    \bar "|"
    \stemOff fa\breve \stemOn sol4
    \bar "|"
    \stemOff sol\breve fa2 \stemOn re4
    \bar "|."
  }
}