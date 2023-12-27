\version "2.20.0"
\language "italiano"

stemOff = \hide Staff.Stem
stemOn  = \undo \stemOff

\header {
  %title = "Cantique de l'Ancien Testament 41"
  %tagline = ##f
  copyright = "Psalmodie du séminaire de Paris"
}

\score {
  \new Staff \with { \remove "Time_signature_engraver" }
  \relative
  {
    \key fa \major
    \cadenzaOn
    \stemOff la'\breve \bar "|" do\breve \bar "|" \stemOn la4
    \bar "|"
    \stemOff la\breve \bar "|" sol\breve \bar "|" \stemOn fa4
    \bar "|."
  }
  \addlyrics{
      \override LyricText.self-alignment-X = #LEFT
      "Toutes les" "œuvres du Sei-" "gneur"
      "bénis-" "sez le Sei-" "gneur"
    }
}