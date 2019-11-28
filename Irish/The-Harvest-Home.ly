#(set-default-paper-size "a5" 'landscape)
#(set-global-staff-size 22)

\version "2.16.2"
\header {
  title = "The Harvest Home"
  arranger = ""
  enteredby = "grerika @ github"
  lastupdated = "11/28/2019"
  tagline = "Gobliners"  
}

global = {
  \key d \major
  \time 4/4
    %\tempo 4 = 125
}

voice = \relative c'{
  \global
  \dynamicUp
  \partial  4 
  e8^\markup{A} fis
   \repeat volta 2 {
     \bar ".|:"  d^\markup{D} a' fis a d, a' fis a | d^\markup{D} e fis e d cis b a | e'^\markup{A} a, fis' a, g' a, fis' a, 
                    | \tuplet 3/2 {e'^Em fis e} \tuplet 3/2 {d cis b} \tuplet 3/2 {a^\markup{A7} b a} \tuplet 3/2 {g fis e} |
                    | d8^\markup{D} a' fis a d, a' fis a
                    | d^\markup{D} e fis e d cis b a | e'4^\markup{A7} fis \tuplet 5/2 {g4 fis e cis e  } }
     \alternative {
      { d4^\markup{D} fis d  a8^\markup{A} fis|}
      { d'4^\markup{D} fis d  cis8 d |}
    }	
      \repeat volta 2 {
         e8^\markup{A} a, a a fis'^\markup{D} a, a a | g'^\markup{A7} a, fis' a, e'^\markup{D} a, a a | e'^\markup{A} a, fis' a, g' a, fis' a, |  
         \tuplet 3/2 { e'^\markup{Em} fis e} \tuplet 3/2 { d cis b} \tuplet 3/2 { a^\markup{A7} b a} \tuplet 3/2  {g fis e} |
         d8^\markup{D} a' fis a d, a' fis a | d^\markup{D} e fis e d cis b a | e'4^\markup{A7} fis4 \tuplet 5/2 {g4 fis e cis e} 
      }
         \alternative {
            { d4^\markup{D} fis d  cis8 d }
            { d4^\markup{D} fis d2 }
         }
   %\bar ":|."
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