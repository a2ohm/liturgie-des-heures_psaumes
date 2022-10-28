\version "2.20.0"
\language "italiano"

\header {
  %title = "Cantique du Nouveau Testament 10"
  %tagline = ##f
  copyright = "Psalmodie du séminaire de Paris"
}

armure = { \key sol \minor \time 2/4  \partial 4}
% TODO Anacruse ?
% TODO Triolet ?
Soprane = \relative { sol'16 sol sol sol | re'4       \tuplet 3/2 {do8       sib       do}        | re4         \bar "|." }
Baryton = \relative { sol'16 sol sol sol | <re la'>4  \tuplet 3/2 {<fa la>8  <fa sol>  <mib sol>} | <re la'>4   \bar "|." }

Refrain =
\lyricmode { Nous te ren- dons grâce, Ô no- tre Dieu ! }

\score {
  \new ChoirStaff <<
  \new Staff <<
  \armure
  \new Voice = "Soprane"  { \voiceOne  \Soprane }
  \new Voice = "Baryton" { \voiceTwo \Baryton }
  \new Lyrics \lyricsto "Soprane" { \Refrain   }
  >>
  >>
}