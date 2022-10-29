\version "2.20.0"
\language "italiano"

stemOff = \hide Staff.Stem
stemOn  = \undo \stemOff

\header {
  %title = "Psaume 32"
  %tagline = ##f
  copyright = "Psalmodie du séminaire de Paris"
}

\score {
  \new Staff \with { \remove "Time_signature_engraver" }
  \relative
  {
    \key mib \major
    \cadenzaOn
    \stemOff sol'\breve sib1 \stemOn sol4
    \bar "|"
    \stemOff sol\breve fa1 mib4 \stemOn fa4
    \bar "|"
    \stemOff sib\breve do1 \stemOn sib4
    \bar "|"
    \stemOff sol\breve fa1 \stemOn mib4
    \bar "|."
  }
}