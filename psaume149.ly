\version "2.20.0"
\language "italiano"

stemOff = \hide Staff.Stem
stemOn  = \undo \stemOff

\header {
  %title = "Psaume 149"
  %tagline = ##f
  copyright = "Psalmodie du séminaire de Paris"
}

\score {
  \new Staff \with { \remove "Time_signature_engraver" }
  \relative
  {
    \key fa \major
    \cadenzaOn
    \stemOff la'\breve sol2 \stemOn fa4
    \bar "|"
    \stemOff do'\breve sib2 \stemOn la4
    \bar "|"
    \stemOff re\breve do2 \stemOn sib4
    \bar "|"
    \stemOff do\breve sib2 \stemOn la4
    \bar "|"
    \stemOff re,\breve mi2 \stemOn fa4
    \bar "|"
    \stemOff do'\breve sib2 \stemOn la4
    \bar "|."
  }
}