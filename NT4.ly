\version "2.20.0"
\language "italiano"

\header {
  %title = "Cantique du Nouveau Testament 4"
  %tagline = ##f
  copyright = "Psalmodie du séminaire de Paris"
}

armure = { \key fa \major \time 6/8  }

Soprane   = \relative { fa'8 fa mi re fa sol la4. la4 la8 la la la si sol sol la2. \bar "|." }
Alto      = \relative { fa'8 fa mi re re mi  do4. do4 mi8 re mi fa mi mi  re  do2. \bar "|." }

Refrain =
\lyricmode { Bé- ni sois- tu, no- tre Pè- re, qui nous as bé- nis dans le Christ. }

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