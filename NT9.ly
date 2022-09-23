\version "2.20.0"
\language "italiano"

\header {
  %title = "Cantique du Nouveau Testament 9"
  %tagline = ##f
  copyright = "Psalmodie du séminaire de Paris"
}

armure = { \key re \minor \partial 8  }

Soprane   = \relative { re'8 la' la fa sol la4 fa8 re mi mi re2 \bar "|." }
Alto      = \relative { re'8 <re fa> <re fa> re <do mi> fa4 re8 sib <sol re'> <la dod> re2 \bar "|." }
% Basse                 re'8 re       re re do          fa4 re8 sib sol la re2
Refrain =
\lyricmode { Puis- sance hon- neur et gloire à l'a- gneau de "Dieu !" }

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