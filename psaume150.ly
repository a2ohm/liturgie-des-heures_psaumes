\version "2.20.0"
\language "italiano"

stemOff = \hide Staff.Stem
stemOn  = \undo \stemOff

\header {
  %title = "Psaume 150"
  %tagline = ##f
  copyright = "Psalmodie du séminaire de Paris"
}

\score {
  \new Staff \with { \remove "Time_signature_engraver" }
  \relative
  {
    \key fa \major
    \cadenzaOn
    \stemOff la'\breve \stemOn do4
    \bar "|"
    \stemOff fa,\breve sol2 \stemOn la4
    \bar "|"
    \stemOff sib\breve la4 \stemOn sol4
    \bar "|"
    \stemOff sol\breve fa2 \stemOn sol4
    \bar "|."
  }
}