\version "2.20.0"
\language "italiano"

stemOff = \hide Staff.Stem
stemOn  = \undo \stemOff

\header {
  %title = "Psaume 111"
  %tagline = ##f
  copyright = "Psalmodie du séminaire de Paris"
}

\score {
  \new Staff \with { \remove "Time_signature_engraver" }
  \relative
  {
    \key fa \major
    \cadenzaOn
    \stemOff la'\breve re1 \stemOn do4
    \bar "|"
    \stemOff fa,\breve sib1 \stemOn la4
    \bar "||"
    \stemOff la\breve^\markup{+} \stemOn sol4
    \bar "|."
  }
}