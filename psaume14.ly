\version "2.20.0"
\language "italiano"

stemOff = \hide Staff.Stem
stemOn  = \undo \stemOff

\header {
  %title = "Psaume 14"
  %tagline = ##f
  copyright = "Psalmodie du séminaire de Paris"
}

\score {
  \new Staff \with { \remove "Time_signature_engraver" }
  \relative
  {
    \key mib \major
    \cadenzaOn
    \stemOff sib'\breve do1 \stemOn sol4
    \bar "|"
    \stemOff sol\breve fa1 \stemOn sol4
    \bar "||"
    \stemOff sib\breve^\markup{+} \stemOn sol4
    \bar "|."
  }
}