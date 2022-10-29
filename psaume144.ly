\version "2.20.0"
\language "italiano"

stemOff = \hide Staff.Stem
stemOn  = \undo \stemOff

\header {
  %title = "Psaume 144"
  %tagline = ##f
  copyright = "Psalmodie du séminaire de Paris"
}

voltaOption = \markup \text {}

\score {
  \new Staff \with { \remove "Time_signature_engraver" }
  \relative
  {
    \key sol \major
    \cadenzaOn
    \set Score.repeatCommands = #(list(list 'volta voltaOption))
    \stemOff la'\breve^\markup{(1)} \stemOn sol4
    \set Score.repeatCommands = #'((volta #f))
    \bar "|"
    \stemOff la\breve^\markup{2} si1 \stemOn sol4
    \bar "|"
    \set Score.repeatCommands = #(list(list 'volta voltaOption))
    \stemOff sol\breve^\markup{(3)} mi1 \stemOn sol4
    \set Score.repeatCommands = #'((volta #f))
    \bar "|"
    \stemOff sol\breve^\markup{4} fad1 \stemOn la4
    \bar "|."
  }
}