\version "2.20.0"
\language "italiano"

stemOff = \hide Staff.Stem
stemOn  = \undo \stemOff

\header {
  %title = "Psaume 121"
  %tagline = ##f
  copyright = "Psalmodie du séminaire de Paris"
}

\score {
  \new Staff \with { \remove "Time_signature_engraver" }
  \relative
  {
    \key sib \major
    \cadenzaOn
    \repeat volta 2 {
    \stemOff sib'\breve \stemOn do4
    \bar "|"
    \stemOff do\breve sib1 \stemOn sol4
    }
    \stemOff sol\breve fa1 \stemOn sol4
    \bar "|"
    \stemOff do\breve sib1 \stemOn sol4
    \bar "|."
  }
}