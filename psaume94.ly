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
    \stemOff re'\breve^\markup { 1 } fad2 \stemOn la4
    \bar "|"
    \stemOff la\breve^\markup { 2 } si2 \stemOn la4
    \bar "|"
    \stemOff la4^\markup { 3 } fad\breve sold2 \stemOn fad4
    \bar "|"
    \stemOff fad^\markup { 4 } mi\breve fad2 \stemOn re4
    \bar "|"
    \stemOff si^\markup { (5) } re\breve mi2 \stemOn re4
    \bar "|"
    \stemOff re^\markup { (6) } sol\breve mi2 \stemOn re4
    \bar "|."
  }
}