\version "2.20.0"
\language "italiano"

stemOff = \hide Staff.Stem
stemOn  = \undo \stemOff

\header {
  %title = "Psaume 115"
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
    \stemOff mi\breve^\markup{2} \stemOn fa4
    \bar "|"
    \stemOff fa\breve^\markup{(3)} \stemOn sol4
    \bar "|"
    \stemOff sol\breve^\markup{(4)} \stemOn la4
    \bar "|"
    \stemOff do\breve^\markup{5} \stemOn sib4
    \bar "|"
    \stemOff la\breve^\markup{6} fa4 \stemOn sol4
    \bar "|."
  }
}