\version "2.20.0"
\language "italiano"

stemOff = \hide Staff.Stem
stemOn  = \undo \stemOff

\header {
  %title = "Psaume 148"
  %tagline = ##f
  copyright = "Psalmodie du séminaire de Paris"
}

\score {
  \new Staff \with { \remove "Time_signature_engraver" }
  \relative
  {
    \key mib \major
    \cadenzaOn
    \stemOff sol'\breve fa2 \stemOn mib4
    \bar "|"
    \stemOff sib'\breve sol2 \stemOn fa4
    \bar "|"
    \stemOff lab\breve sol4 \stemOn fa4
    \bar "|"
    \stemOff lab\breve fa2 \stemOn sol4
    \bar "|."
  }
}