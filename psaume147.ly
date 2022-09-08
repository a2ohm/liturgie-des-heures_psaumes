\version "2.20.0"
\language "italiano"

stemOff = \hide Staff.Stem
stemOn  = \undo \stemOff

\header {
  %title = "Psaume 147"
  %tagline = ##f
  copyright = "Psalmodie du séminaire de Paris"
}

\score {
  \new Staff \with { \remove "Time_signature_engraver" }
  \relative
  {
    \key fa \major
    \cadenzaOn
    \stemOff sib'\breve la4 \stemOn sol4
    \bar "|"
    \stemOff sol\breve fa4 \stemOn la4
    \bar "|"
    \stemOff sol\breve la2 sol4 \stemOn fa4
    \bar "|"
    \stemOff fa\breve mi4 \stemOn sol4
    \bar "|."
  }
}