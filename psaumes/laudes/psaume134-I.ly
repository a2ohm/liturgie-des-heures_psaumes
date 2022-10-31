\version "2.20.0"
\language "italiano"

stemOff = \hide Staff.Stem
stemOn  = \undo \stemOff

\header {
  %title = "Psaume 134 (lundi IV, laudes)"
  %tagline = ##f
  copyright = "Psalmodie du séminaire de Paris"
}

\score {
  \new Staff \with { \remove "Time_signature_engraver" }
  \relative
  {
    \key do \major
    \cadenzaOn
    \stemOff do'\breve <do mi sol>1 \stemOn <do fa la>4
    \bar "|"
    \stemOff <mi sol do>\breve <do la'>1 sol'4( fa) \stemOn <do mi sol>4
    \bar "||"
    \stemOff do\breve^\markup{ + } \stemOn <la do>4
    \bar "|."
  }
}