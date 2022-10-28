\version "2.20.0"
\language "italiano"

stemOff = \hide Staff.Stem
stemOn  = \undo \stemOff

\header {
  %title = "Psaume 136"
  %tagline = ##f
  copyright = "Psalmodie du séminaire de Paris"
}

voltaPsaume =     \markup {\text {"Psaume"}}
voltaDoxologie =  \markup {\text {"Doxologie"}}

\score {
  \new Staff \with { \remove "Time_signature_engraver" }
  \relative
  {
    \key do \major
    \cadenzaOn
    \stemOff la'\breve do1 \stemOn si4
    \bar "|"
    \stemOff si\breve la1 \stemOn sold4
    \bar "|"
    \stemOff sold\breve la1 si4 do \stemOn si4
    \bar "|"
    \set Score.repeatCommands = #(list(list 'volta voltaPsaume))
    {
      \stemOff mi,\breve la1 \stemOn sold4
      \bar "|"
      \stemOff sold\breve fa1 \stemOn mi4
      \bar "||"
    }
    
    \set Score.repeatCommands = #'((volta #f))
    \set Score.repeatCommands = #(list(list 'volta voltaDoxologie))
    {
      \stemOff mi\breve la1 sold fa4 \stemOn mi4        
    }
    
    \set Score.repeatCommands = #'((volta #f))
    
    \bar "|."
  }
}