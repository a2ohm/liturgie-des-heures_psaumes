\version "2.20.0"
\language "italiano"

stemOff = \hide Staff.Stem
stemOn  = \undo \stemOff

\header {
  %title = "Psaume 76"
  %tagline = ##f
  copyright = "Psalmodie du séminaire de Paris"
}

\score {
  \new Staff \with { \remove "Time_signature_engraver" }
  \relative
  {
    \key sol \major
    \cadenzaOn
    \stemOff sol'\breve si2 \stemOn la4
    \bar "|"
    \stemOff fad\breve la2 \stemOn sol4
    \bar "||"
    \stemOff sol\breve^\markup{ + } \stemOn mi4
    \bar "|."
  }
}