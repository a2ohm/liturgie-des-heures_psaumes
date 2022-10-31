\version "2.20.0"
\language "italiano"

stemOff = \hide Staff.Stem
stemOn  = \undo \stemOff

\header {
  %title = "Psaume 117"
  %tagline = ##f
  copyright = "Psalmodie du séminaire de Paris"
}

voltaOption = \markup {}
\score {
  \new Staff \with { \remove "Time_signature_engraver" }
  \relative
  {
    \key sib \major
    \cadenzaOn
    \stemOff fa'\breve^\markup { 1 } sib1 \stemOn sol4
    \bar "|"
    \stemOff sol\breve^\markup { 2 } do1 \stemOn la4
    \bar "|"
    \set Score.repeatCommands = #(list(list 'volta voltaOption))
    \stemOff re\breve^\markup { (3) } do1 \stemOn sib4
    \bar "|"
    \stemOff re\breve^\markup { (4) } do1 \stemOn do4
    \set Score.repeatCommands = #'((volta #f))
    \bar "|"
    \stemOff sib\breve^\markup { 5 } do1 \stemOn re4
    \bar "|"
    \stemOff sol,\breve^\markup { 6 } sib1 \stemOn sib4
    \bar "|."
  }
}