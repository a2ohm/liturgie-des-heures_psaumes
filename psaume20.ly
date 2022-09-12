\version "2.20.0"
\language "italiano"

stemOff = \hide Staff.Stem
stemOn  = \undo \stemOff

\header {
  %title = "Psaume 20"
  %tagline = ##f
  copyright = "Psalmodie du séminaire de Paris"
}

\score {
  \new Staff \with { \remove "Time_signature_engraver" }
  \relative
  {
    \key fa \major
    \cadenzaOn
    \stemOff la'\breve sol1 \stemOn fa4
    \bar "|"
    \stemOff fa\breve \stemOn sol4
    \bar "|"
    \stemOff sib\breve la1 \stemOn sol4
    \bar "|"
    \stemOff sol\breve fa4 sol4 \stemOn la4
    \bar "|."
  }
}