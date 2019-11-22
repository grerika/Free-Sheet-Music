%#(set-default-paper-size "a5" 'landscape)
#(set-default-paper-size "a4" 'portrait)
#(set-global-staff-size 26)

\version "2.18.2"
\header {
  title = "The Kesh"
  arranger = "Traditional Irish"
  enteredby = "grerika @ github"
  lastupdated = "11/22/2019"
  tagline = "Gobliners"
}

global = {
  \key g \major
  \time 6/8
}

voice = \relative c' {
  \global
  %\dynamicUp
  \bar ".|:"
  g'4 g8 g8 a b | a4 a8 a8 b d | e d d g d d | e d b d b a |
  g4 g8 g8 a b | a4 a8 a8 b d | e8 d d g d d | b a fis g4.  
  \bar ":|.|:"
  b4 b8 d4 d8 | e8 g e d b a | b4 b8 d b g | a b a a g a | 
   b a b d cis d | e g e d b d | g fis g a g a | b g g g4. 
  \bar ":|."
}


\score {
  \new Staff { \voice }
  \layout { }
  \midi {
    \context {
      \voice
    }
    \tempo 2 = 90
  }
}