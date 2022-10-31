\version "2.20.0"
\language "italiano"

stemOff = \hide Staff.Stem
stemOn  = \undo \stemOff

\header {
  %title = "Psaume 66"
  %tagline = ##f
  copyright = "Psalmodie du séminaire de Paris"
}

\score {
  \new Staff \with { \remove "Time_signature_engraver" }
  \relative
  {
    \key sol \major
    \cadenzaOn
    \stemOff sol'\breve mi1 \stemOn sol4
    \bar "|"
    \stemOff sol\breve la1 \stemOn sol4
    \bar "|"
    \stemOff sol\breve \stemOn mi4
    \bar "|"
    \stemOff mi\breve re4 do4 \stemOn re4
    \bar "|."
  }
}