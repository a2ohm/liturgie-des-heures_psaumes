\version "2.20.0"
\language "italiano"

\header {
  %title = "Cantique du Nouveau Testament 4"
  %tagline = ##f
  copyright = "Psalmodie du séminaire de Paris"
}

armure = { \key fa \major \cadenzaOn}
% TODO Barres ?
Soprane   = \relative { do'4 do re8[  mi]  \bar "|" fa4 fa8[ sol]  \bar "|" la4 la r8 do       \bar "|" re2          \bar "|" do8[      sib       la la] \bar "|" sol2(     \bar "|" sol)      \bar "|." }
Alto      = \relative { do'4 do sib8[ sib] \bar "|" la4 re8[ do]   \bar "|" fa4 fa r8 <fa la>  \bar "|" <sib, fa'>2  \bar "|" <re fa>8[ <mi sol>  fa fa] \bar "|" <do fa>2( \bar "|" <do mi>)  \bar "|." }

Refrain =
\lyricmode { Gran- des, mer- veil- leu- ses tes œu- vres, Sei- gneur, Dieu de l'u- ni- vers ! }

\score {
  \new ChoirStaff <<
  \new Staff \with {\remove "Time_signature_engraver"}<<
  \armure
  \new Voice = "Sop"  { \voiceOne  \Soprane }
  \new Voice = "Alto" { \voiceTwo \Alto }
  \new Lyrics \lyricsto "Sop" { \Refrain   }
  >>
  >>
}