\version "2.20.0"
\language "italiano"

stemOff = \hide Staff.Stem
stemOn  = \undo \stemOff

\header {
  %title = "Psaume 138 I"
  %tagline = ##f
  copyright = "Psalmodie du séminaire de Paris"
}

voltaOption =     \markup {\text {"(3)"}}

\score {
  \new Staff \with { \remove "Time_signature_engraver" }
  \relative
  {
    \key do \major
    \cadenzaOn
    \stemOff mi'\breve la1 sol4 \stemOn la4
    \bar "|"
    \stemOff si\breve do1 si4 \stemOn la4
    \bar "|"
        \set Score.repeatCommands = #(list(list 'volta voltaOption))
    \stemOff la\breve sol4 \stemOn fa4
        \set Score.repeatCommands = #'((volta #f))

    \bar "|"
    \stemOff la\breve sol4 \stemOn mi4
    \bar "|."
  }
}