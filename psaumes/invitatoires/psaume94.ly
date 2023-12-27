\version "2.20.0"
\language "italiano"

stemOff = \hide Staff.Stem
stemOn  = \undo \stemOff

\header {
  %title = "Psaume 94"
  %tagline = ##f
  copyright = "Psalmodie du séminaire de Paris"
}

\score {
  \new Staff \with { \remove "Time_signature_engraver" }
  \relative
  {
    \key re \major
    \cadenzaOn
    \stemOff re'\breve^\markup { 1 } fad1 \stemOn la4
    \bar "|"
    \stemOff la\breve^\markup { 2 } si1 \stemOn la4
    \bar "|"
    \stemOff la4^\markup { 3 } fad\breve sold1 \stemOn fad4
    \bar "|"
    \stemOff fad4^\markup { 4 } mi\breve fad1 \stemOn re4
    \bar "|"
    \stemOff si4^\markup { (5) } re\breve mi1 \stemOn re4
    \bar "|"
    \stemOff re4^\markup { (6) } sol\breve mi1 \stemOn re4
    \bar "|."
  }
}