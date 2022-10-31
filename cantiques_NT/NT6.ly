\version "2.20.0"
\language "italiano"

\header {
  %title = "Cantique du Nouveau Testament 6"
  %tagline = ##f
  copyright = "Psalmodie du séminaire de Paris"
}

armure = { \key fa \major \time 2/4 \partial 4 }

Soprane   = \relative { fa'8 mi re4 fa8 sol la4 sol8 la sib sol sol fa la2 \bar "|." }
Alto      = \relative { fa'8 mi re4 re8 mi fa4 do8 do sol' fa mi re <mi dod>2 \bar "|." }

Refrain =
\lyricmode { Gloire à toi Jé sus Christ pre mier né d'en tre les "morts !" }

\score {
  \new ChoirStaff <<
  \new Staff <<
  \armure
  \new Voice = "Sop"  { \voiceOne  \Soprane }
  \new Voice = "Alto" { \voiceTwo \Alto }
  \new Lyrics \lyricsto "Sop" { \Refrain   }
  >>
  >>
}