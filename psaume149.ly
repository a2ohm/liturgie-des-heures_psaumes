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
    \stemOff la'\breve sol1 \stemOn fa4
    \bar "|"
    \stemOff do'\breve sib1 \stemOn la4
    \bar "|"
    \stemOff re\breve do1 \stemOn sib4
    \bar "|"
    \stemOff do\breve sib1 \stemOn la4
    \bar "|"
    \stemOff re,\breve mi1 \stemOn fa4
    \bar "|"
    \stemOff do'\breve sib1 \stemOn la4
    \bar "|."
  }
}