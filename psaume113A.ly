\version "2.20.0"
\language "italiano"

stemOff = \hide Staff.Stem
stemOn  = \undo \stemOff

\header {
  %title = "Psaume 113 A"
  %tagline = ##f
  copyright = "Psalmodie du séminaire de Paris"
}

\score {
  \new Staff \with { \remove "Time_signature_engraver" }
  \relative
  {
    \key fa \major
    \cadenzaOn
    \stemOff la'\breve \stemOn sol4
    \bar "|"
    \stemOff sib\breve la2 sol4 \stemOn fa4
    \bar "|"
    \stemOff sol\breve fa4 \stemOn sol4
    \bar "|"
    \stemOff re\breve fa2 mi4 \stemOn re4
    \bar "|."
  }
}