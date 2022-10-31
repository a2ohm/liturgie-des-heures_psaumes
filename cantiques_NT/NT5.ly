\version "2.20.0"
\language "italiano"

\header {
  %title = "Cantique du Nouveau Testament 5"
  %tagline = ##f
  copyright = "Psalmodie du séminaire de Paris"
}

armure = { \key la \minor  \time 3/4}

Soprane   = \relative {   re'8 re la'4  sol8  fa | mi2 la8 la | re4 re8 re do si | la4( sol)  la \bar "|." }
% Baryton Re'8 re fa4 mi8 re re4 do4 fa8 mi sol4 si8 la sol4 mi2 mi
Basse       = \relative { re'8 re re4   re8   re | la2 re8 do | si4 do8 fa mi re | re4  si    dod \bar "|." }
% Basse2 Re'8 re re4 re8 re la2 re8 do si4 do8 fa mi re la2 la

Refrain =
\lyricmode { Jé- sus Christ est Sei- gneur, à la gloi- re de Dieu le Pè- re. }

\score {
  \new ChoirStaff <<
  \new Staff <<
  \armure
  \new Voice = "Soprano"  { \voiceOne  \Soprane }
  \new Voice = "Basse" { \voiceTwo \Basse }
  \new Lyrics \lyricsto "Soprano" { \Refrain   }
  >>
  >>
}