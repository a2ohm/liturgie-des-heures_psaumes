\version "2.20.0"
\language "italiano"

stemOff = \hide Staff.Stem
stemOn  = \undo \stemOff

\header {
  %title = "Cantique de l'Ancien Testament 43"
  %tagline = ##f
  copyright = "Psalmodie du séminaire de Paris"
}

\score {
  \new Staff \with { \remove "Time_signature_engraver" }
  \relative
  {
    \key do \major
    \cadenzaOn
    \stemOff la'\breve do1 \stemOn si4
    \bar "|"
    \stemOff la\breve sol1 \stemOn mi4
    \bar "||"
    \stemOff la\breve^\markup{ + } \stemOn sol4    
    \bar "|."
  }
}
