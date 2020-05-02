%#(set-default-paper-size "a4" 'portrait)
#(set-default-paper-size "a5" 'landscape)
%#(set-global-staff-size 26)

\version "2.18"
\header {
  title = "The Wise Maid"
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
     d8 e | 
      fis4.\mordent g8 fis e d e | fis a a b a fis e d 
     d'4 \tuplet 3/2 { e8 fis g} fis8 d e cis | 
      d b a fis b e, e4\mordent \break
      fis4. \mordent g8 fis e d e | fis a a b a fis e d | 
      d'4 \tuplet 3/2 { e8 fis g } fis8 d e cis | d b a g fis [ d ]
  \bar ":|.|:" 
  \break
  fis a | 
    d4 a8 g fis d fis a | d fis a fis g fis e g |
    fis a, d fis e a, cis e | d fis e d cis a a4\mordent
    b8 d, g b a d, fis a | d fis a fis g fis e d |
    \tuplet 3/2 { b8 cis d } cis8 e d b a g | fis a e a d,4   
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


