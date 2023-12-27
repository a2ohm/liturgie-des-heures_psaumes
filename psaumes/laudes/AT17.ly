\version "2.20.0"
\language "italiano"

stemOff = \hide Staff.Stem
stemOn  = \undo \stemOff

\header {
  %title = "Cantique de l'Ancien Testament 17"
  %tagline = ##f
  copyright = "Psalmodie du séminaire de Paris"
}

\score {
  \new Staff \with { \remove "Time_signature_engraver" }
  \relative
  {
    \key fa \major
    \cadenzaOn
    \stemOff <la' fa>\breve <sol do,>4 \stemOn <fa re>4
    \bar "|"
    \stemOff <fa re>\breve <sol do,>1 \stemOn <la fa>4
    \bar "||"
    \stemOff <la fa>\breve^\markup{+} \stemOn <sol do,>4
    \bar "|."
  }
}