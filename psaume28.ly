\version "2.20.0"
\language "italiano"

stemOff = \hide Staff.Stem
stemOn  = \undo \stemOff

\header {
  %title = "Psaume 28"
  %tagline = ##f
  copyright = "Psalmodie du séminaire de Paris"
}

\score {
  \new Staff \with { \remove "Time_signature_engraver" }
  \relative
  {
    \key re \major
    \cadenzaOn
    \stemOff <re' la'>\breve <mi si'>2 \stemOn <fad la>4
    \bar "|"
    \stemOff <fad la>\breve <re fad>2 \stemOn <mi la>4
    \bar "||"
    \stemOff <re la'>\breve^\markup{ + } \stemOn <si fad'>4
    \bar "|."
  }
}