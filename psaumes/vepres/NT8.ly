\version "2.20.0"
\language "italiano"

\header {
  %title = "Cantique du Nouveau Testament 8"
  %tagline = ##f
  copyright = "Psalmodie du séminaire de Paris"
}

armureTreble = {\clef "treble" \key la \minor \cadenzaOn}
armureBass = {\clef "bass" \key la \minor \cadenzaOn}

Soprane = \relative { la'4 la la la sol sol fa2     mi  mi4  mi   mi mi mi2 mi\fermata    \bar "|." }
Alto    = \relative { mi'4 mi mi mi mi  mi  do2     sol sol4 sol  la la la2 sold\fermata  \bar "|." }

Tenor   = \relative { do'4  do do do si  si  la( si) do2 do4  do   do do si2 si\fermata    \bar "|." }
Basse   = \relative { la,4 la la la mi' mi  fa2     do  do4  do  la la mi'2 mi\fermata    \bar "|." }

Refrain =
\lyricmode { C'est par tes souf- fran- ces, Sei- gneur, que nous som- mes sau- vés. }

\score {
  \new ChoirStaff 
  <<
  \new Staff \with {\remove "Time_signature_engraver"}
    <<
  \armureTreble
  \new Voice = "Soprano"  { \voiceOne  \Soprane }
  \new Voice = "Alto" { \voiceTwo \Alto }
  \new Lyrics \lyricsto "Soprano" { \Refrain   }
    >>
  \new Staff \with {\remove "Time_signature_engraver"} 
    <<
  \armureBass
  \new Voice = "Tenor"  { \voiceThree  \Tenor }
  \new Voice = "Basse" { \voiceFour \Basse }
    >>
  >>
}