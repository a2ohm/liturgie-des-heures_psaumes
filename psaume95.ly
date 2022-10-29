\version "2.20.0"
\language "italiano"

stemOff = \hide Staff.Stem
stemOn  = \undo \stemOff

\header {
  %title = "Psaume 95"
  %tagline = ##f
  copyright = "Psalmodie du séminaire de Paris"
}

voltaOption = \markup {1}

\score {
  \new Staff \with { \remove "Time_signature_engraver" }
  \relative
  {
    \key la \major
    \cadenzaOn
    \set Score.repeatCommands = #(list(list 'volta voltaOption))
    \stemOff la'\breve \stemOn fad4
    \set Score.repeatCommands = #'((volta #f))
    \bar "|"
    \stemOff la\breve si1 \stemOn la4
    \bar "|"
    \stemOff la\breve fad1 \stemOn mi4
    \bar "|."
  }
}