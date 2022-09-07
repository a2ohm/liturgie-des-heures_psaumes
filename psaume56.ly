\version "2.20.0"
\language "italiano"

stemOff = \hide Staff.Stem
stemOn  = \undo \stemOff

\header {
  %title = "Psaume 56"
  %tagline = ##f
  copyright = "Psalmodie du séminaire de Paris"
}

\score {
  \new Staff \with { \remove "Time_signature_engraver" }
  \relative
  {
    \key sol \major
    \cadenzaOn
    \stemOff sol'\breve la2 \stemOn sol4
    \bar "|"
    \stemOff sol\breve fad2 \stemOn mi4
    \bar "||"
    \stemOff sol\breve^\markup{ + } \stemOn mi4
    \bar "|."
  }
}