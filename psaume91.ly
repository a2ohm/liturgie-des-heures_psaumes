\version "2.20.0"
\language "italiano"

stemOff = \hide Staff.Stem
stemOn  = \undo \stemOff

\header {
  %title = "Psaume 91"
  %tagline = ##f
  copyright = "Psalmodie du séminaire de Paris"
}

\score {
  \new Staff \with { \remove "Time_signature_engraver" }
  \relative
  {
    \key fa \major
    \cadenzaOn
    \stemOff la'\breve do1 \stemOn la4
    \bar "|"
    \stemOff la\breve sol1 \stemOn la4
    \bar ":|."
    \stemOff sib\breve la4 \stemOn sol4
    \bar "|"
    \stemOff sol\breve fa4 sol4 \stemOn la4
    \bar "|."
  }
}