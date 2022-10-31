\version "2.20.0"
\language "italiano"

stemOff = \hide Staff.Stem
stemOn  = \undo \stemOff

\header {
  %title = "Psaume 135-2"
  %tagline = ##f
  copyright = "Psalmodie du séminaire de Paris"
}

voltaOption = \markup {\text {"(2)"}}

\score {
  \new Staff \with { \remove "Time_signature_engraver" }
  \relative
  {
    \key la \major
    \cadenzaOn
    \stemOff la'\breve^\markup{1} sold4 \stemOn fad4
    \bar "|"
    \stemOff si\breve^\markup{TOUS} la1 \stemOn sold4
    \bar "|"
    \set Score.repeatCommands = #(list(list 'volta voltaOption))
    \stemOff la\breve fad4 la \stemOn si4
    \bar "|"
    \stemOff dod\breve^\markup{TOUS} la1 \stemOn si4
    \set Score.repeatCommands = #'((volta #f))
    \bar "|"
    \stemOff sold\breve^\markup{3} la1 fad4 mi \stemOn re4
    \bar "|"
    \stemOff re\breve^\markup{TOUS} fad1 \stemOn mi4
    \bar "|."
  }
}