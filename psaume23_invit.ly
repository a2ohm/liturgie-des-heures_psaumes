\version "2.20.0"
\language "italiano"

stemOff = \hide Staff.Stem
stemOn  = \undo \stemOff

\header {
  %title = "Psaume 23 (invitatoire)"
  %tagline = ##f
  copyright = "Psalmodie du séminaire de Paris"
}

\score {
  \new Staff \with { \remove "Time_signature_engraver" }
  \relative
  {
    \key fa \major
    \cadenzaOn
    \stemOff re'\breve^\markup{1} \stemOn mi4
    \bar "|"
    \stemOff mi\breve^\markup{2} fa1 sol4 \stemOn la4
    \bar "|"
    \stemOff la\breve^\markup{(3)} \stemOn sol4
    \bar "|"
    \stemOff sol\breve^\markup{4} mi1 re4 do4 \stemOn re4
    \bar "|."
  }
}