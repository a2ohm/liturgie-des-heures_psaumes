\version "2.20.0"
\language "italiano"

stemOff = \hide Staff.Stem
stemOn  = \undo \stemOff

\header {
  %title = "Psaume 66 (invitatoire)"
  %tagline = ##f
  copyright = "Psalmodie du séminaire de Paris"
}

\score {
  \new Staff \with { \remove "Time_signature_engraver" }
  \relative
  {
    \key fa \major
    \cadenzaOn
    \stemOff do'\breve fa1 \stemOn la4
    \bar "|"
    \stemOff la\breve sol1 \stemOn fa4
    \bar "|"
    \stemOff fa\breve mi4 \stemOn re4
    \bar "|"
    \stemOff re\breve fa4 \stemOn sol4
    \bar "|."
  }
}