\version "2.20.0"
\language "italiano"

stemOff = \hide Staff.Stem
stemOn  = \undo \stemOff

\header {
  %title = "Psaume 44"
  %tagline = ##f
  copyright = "Psalmodie du séminaire de Paris"
}

\score {
  \new Staff \with { \remove "Time_signature_engraver" }
  \relative
  {
    \key fa \major
    \cadenzaOn
    \stemOff la'\breve^\markup{(1)} \stemOn sol4
    \bar "|"
    \stemOff la\breve^\markup{2} fa1 \stemOn sol4
    \bar "|"
    \stemOff sol\breve^\markup{3} sib1 \stemOn la4
    \bar "|."
  }
}