\version "2.20.0"
\language "italiano"

stemOff = \hide Staff.Stem
stemOn  = \undo \stemOff

\header {
  %title = "Psaume 140"
  %tagline = ##f
  copyright = "Psalmodie du séminaire de Paris"
}

\score {
  \new Staff \with { \remove "Time_signature_engraver" }
  \relative
  {
    \key fa \major
    \cadenzaOn
    \stemOff fa'\breve \stemOn sol4
    \bar "|"
    \stemOff sol\breve \stemOn la4
    \bar "|"
    \stemOff la\breve \stemOn sib4
    \bar "|"
    \stemOff sol\breve sib1 \stemOn la4
    \bar "|."
  }
}