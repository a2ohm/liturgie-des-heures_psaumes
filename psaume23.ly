\version "2.20.0"
\language "italiano"

stemOff = \hide Staff.Stem
stemOn  = \undo \stemOff

\header {
  %title = "Psaume 23"
  %tagline = ##f
  copyright = "Psalmodie du séminaire de Paris"
}

\score {
  \new Staff \with { \remove "Time_signature_engraver" }
  \relative
  {
    \key sib \major
    \cadenzaOn
    \stemOff sib'\breve do1 \stemOn sib4
    \bar "|"
    \stemOff sib\breve sol1 \stemOn fa4
    \bar "||"
    \stemOff sib\breve^\markup{+} \stemOn sol4
    \bar "|."
  }
}