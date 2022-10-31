\version "2.20.0"
\language "italiano"

stemOff = \hide Staff.Stem
stemOn  = \undo \stemOff

\header {
  %title = "Psaume 118-XIX"
  %tagline = ##f
  copyright = "Psalmodie du séminaire de Paris"
}

\score {
  \new Staff \with { \remove "Time_signature_engraver" }
  \relative
  {
    \key sol \minor
    \cadenzaOn
    \stemOff sol'\breve \stemOn fa4
    \bar "|"
    \stemOff sol\breve \stemOn la4
    \bar "|"
    \stemOff sib\breve \stemOn la4
    \bar "|"
    \stemOff la\breve \stemOn sol4
    \bar "|."
  }
}