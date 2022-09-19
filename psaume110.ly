\version "2.20.0"
\language "italiano"

stemOff = \hide Staff.Stem
stemOn  = \undo \stemOff

\header {
  %title = "Psaume 110"
  %tagline = ##f
  copyright = "Psalmodie du séminaire de Paris"
}

\score {
  \new Staff \with { \remove "Time_signature_engraver" }
  \relative
  {
    \key fa \major
    \cadenzaOn
    \stemOff fa'\breve sol1 la4 sib4 \stemOn la4
    \bar "|"
    \stemOff la\breve fa1 mi4 \stemOn re4
    \bar "|."
  }
}