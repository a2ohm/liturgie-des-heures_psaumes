\version "2.20.0"
\language "italiano"

stemOff = \hide Staff.Stem
stemOn  = \undo \stemOff

\header {
  %title = "Psaume 46 alternatif"
  %tagline = ##f
  copyright = "Psalmodie du séminaire de Paris"
}

voltaOption = \markup \text {(4), (5)}

\score {
  \new Staff \with { \remove "Time_signature_engraver" }
  \relative
  {
    \key mib \major
    \cadenzaOn
    \repeat volta 2{
    \stemOff sib'\breve do1 \stemOn sib4
    \bar "|"
    \stemOff mib,\breve sib'1 lab4 \stemOn sol4
    }
    \stemOff do,\breve re1 \stemOn mib4
    \bar "|"
    \set Score.repeatCommands = #(list(list 'volta voltaOption))
    \stemOff mib\breve fa1 \stemOn sol4
    \bar "|"
    \stemOff lab\breve sol4 \stemOn fa4
    \set Score.repeatCommands = #'((volta #f))
    \bar "|"
    \stemOff sib\breve lab1 \stemOn sol4
    \bar "|."
  }
}