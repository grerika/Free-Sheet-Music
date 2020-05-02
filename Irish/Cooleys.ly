%#(set-default-paper-size "a4" 'portrait)
#(set-default-paper-size "a5" 'landscape)
%#(set-global-staff-size 26)

\version "2.18"
\header {
  title = "Cooley's"
  enteredby = "grerika @ github"
  tagline = "Last update: 05/02/2020 (Gobliners)"  
}

global = {
  \key d \major
  \time 4/4
}

voice = \relative c' {
  \global
  \dynamicUp
  \partial 4  
  \bar ".|:"
    d4 | e8 b' b a b4 e,8 b' | b4 a8 b d b a g | 
    fis d a' d, b' d, a' d, | fis d a' d, d' a fis d | 
    e b' b a b4 e,8 b' | b4 a8 b d e fis g |
    a fis e cis d b a fis | d e fis d e4
  \bar ":|.|:" 
  \break
    g'8 e | 
    e b b4 e8 fis g fis   | e b b4 g'8 e d b |
    a4 fis8 a d, a' fis a | a4 fis8 a d e fis g |
    e8 b b4 e8 b g' b, | e b b4 d8 e fis g | 
    a fis e cis d b a fis | d e fis d e4
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


