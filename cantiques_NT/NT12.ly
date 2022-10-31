\version "2.20.0"
\language "italiano"

\header {
  %title = "Cantique du Nouveau Testament 12"
  %tagline = ##f
  copyright = "Psalmodie du séminaire de Paris"
}

armure = { \key re \major \time 2/4  }

Soprane   = \relative { re''8( la4) fad8 sol( fad) mi4 re8( fad4) la8 si4 la re8( la4) fad8 sol( fad mi4) re2 \bar "|." }
Alto      = \relative { re''8( la4) la8 si4 la fad8( re4) fad8 sol4 la la( fad8) la si( re4 dod8) re2 \bar "|." }
Basse      = \relative { re'4. re8 re4 la si4. si8 mi4 la, re4. re8 sol,4 la re2 \bar "|." }

Refrain =
\lyricmode { Al- lé- lu- "ia !" Al- lé- lu- "ia !" Al- lé- lu- "ia !" }

\score {
  \new ChoirStaff <<
  \new Staff <<
  \armure
  \new Voice = "Sop"  { \voiceOne  \Soprane }
  \new Lyrics \lyricsto "Sop" { \Refrain   }
  >>
  \new Staff <<
  \armure
  \new Voice = "Alto" { \voiceOne \Alto }
  \new Voice = "Basse" { \voiceTwo \Basse }
  >>
  >>
}