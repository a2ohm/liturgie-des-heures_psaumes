\version "2.20.0"
\language "italiano"

stemOff = \hide Staff.Stem
stemOn  = \undo \stemOff

\header {
  %title = "Psaume 46"
  %tagline = ##f
  copyright = "Psalmodie du séminaire de Paris"
}

\score {
  \new Staff \with { \remove "Time_signature_engraver" }
  \relative
  {
    \key mib \major
    \cadenzaOn
    \stemOff sol'\breve lab1 \stemOn sol4
    \bar "|"
    \stemOff sib\breve fa1 \stemOn sol4
    \bar "|."
  }
}