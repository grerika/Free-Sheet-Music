#(set-default-paper-size "a4" 'portrait)
#(set-global-staff-size 26)

\version "2.16.2"
\header {
  title = "Merrily Kissed The Quaker's Wife"
  arranger = "Traditional Irish"
 enteredby = "grerika @ github"
  lastupdated = "11/22/2019"
   tagline = "Gobliners"  
}

global = {
  \key g \major
  \time 12/8
}

voice = \relative c' {
  \global
  \dynamicUp
  \partial 8
\bar ".|:" 
d8 
  %|g a b d,4 b'8 c4 a8 b g e| g a b d, e g a4. a8 g e | g a b d,4 b'8 | c4 a8 b g e |g a b d,4 e8 g4. g16 g r8 d8|
  |g a b d,4 b'8 c4 a8 b g e| g a b d, e g a4. a8 g8 e | g a b d,4 b'8 | c4 a8 b g e |g a b d,4 e8 g2  r8   d8|
  g8 a b d,4 b'8 c4 a8 b g e| g a b d,8 e8 g8 a4 a8 a4 e8 | g a b d,4 b'8  c4 a8 b g e |g a b d,8 e fis g4 g8 g4 \bar ":|.|:"
  a8 |  b8 g g a g g b g g a g e | g a b d, e g a4. a8 g a | b g g a g g b g g a g e|  g a b  d,4 e8 g2 r8 g8 
  |   b8 g g a g g b g g a g e | g a b d,4 e8 a4  a8 a4. 
  g8 a g fis8 g fis | e fis e  d e d | g a b d, e fis g4 g8 g4
  \bar ":|.|:" 
  d'8    g4 g8 a8 g a b  a g e4 d8  | g4 g8 g8 a b a4 a8 a4.|g8 a g fis8 g fis | e fis e  d e d | g a b d, e fis g4 g8 g4.
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


