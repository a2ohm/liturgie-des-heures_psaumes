\version "2.20.0"
\language "italiano"

stemOff = \hide Staff.Stem
stemOn  = \undo \stemOff

\header {
  %title = "Psaume 135"
  %tagline = ##f
  copyright = "Psalmodie du séminaire de Paris"
}

voltaOption =     \markup {\text {"(2)"}}

\score {
  \new Staff \with { \remove "Time_signature_engraver" }
  <<
  \relative
  {
    \key la \major
    \cadenzaOn
    \stemOff la'\breve sold1 \stemOn fad4
    \bar "|"
    si8[ si] la[ la] la[ la] sold4
    \bar "|"
    \set Score.repeatCommands = #(list(list 'volta voltaOption))
    \stemOff la\breve fad4 la \stemOn si4
    \bar "|"
    dod8[ dod] la[ la] la[ la] si4
    \set Score.repeatCommands = #'((volta #f))
    \bar "|"
    \stemOff sold\breve la1 fad4 mi \stemOn re4
    \bar "|"
    re8[ re] fad[ fad] fad[ fad] mi4
    \bar "|."
  }
  \addlyrics{
    "" "" "" É- ter- nel est son a- mour
    "" "" "" "" É- ter- nel est son a- mour
    "" "" "" "" "" É- ter- nel est son a- mour
}
  >>
}