\version "2.20.0"
\language "italiano"

stemOff = \hide Staff.Stem
stemOn  = \undo \stemOff

\header {
  %title = "Psaume 129"
  %tagline = ##f
  copyright = "Psalmodie du séminaire de Paris"
}

voltaOption = \markup \text { v. 5 }

\score {
  \new Staff \with { \remove "Time_signature_engraver" }
  \relative
  {
    \key sol \minor
    \cadenzaOn
    \set Score.repeatCommands = #(list(list 'volta voltaOption))
    \stemOff re'\breve \stemOn fa4
    \bar "|"
    \stemOff fa\breve re4 fa4 \stemOn sol4
    \set Score.repeatCommands = #'((volta #f))
    \bar "|"
    \stemOff sol\breve \stemOn sib4
    \bar "|"
    \stemOff sib\breve la1 \stemOn sol4
    \bar "|."
  }
}