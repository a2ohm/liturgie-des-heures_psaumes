\version "2.20.0"
\language "italiano"

stemOff = \hide Staff.Stem
stemOn  = \undo \stemOff

\header {
  %title = "Psaume 134 I (vendredi III, vêpres)"
  %tagline = ##f
  copyright = "Psalmodie du séminaire de Paris"
}

\score {
  \new Staff \with { \remove "Time_signature_engraver" }
  \relative
  {
    \key sib \major
    \cadenzaOn
    \stemOff fa'\breve sol1 \stemOn sib4
    \bar "|"
    \stemOff sib\breve sol1 \stemOn fa4
    \bar "||"
    \stemOff fa\breve^\markup{+} \stemOn re4
    \bar "|."
  }
}