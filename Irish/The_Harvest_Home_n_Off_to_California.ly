#(set-default-paper-size "a4" 'portrait)
%#(set-global-staff-size 22)

\version "2.18"
\header {
  title = "The Harvest Home + Off to California"
  enteredby = "grerika @ github"
  tagline = "Last update: 05/02/2019 (Gobliners)"
}

global = {
  \key d \major
  \time 4/4
    %\tempo 4 = 125
}

harvesthome = \relative c'{
  \global
  \dynamicUp
  \partial  4 
    a'8^\markup{A} fis
   \repeat volta 2 {
     \bar ".|:"  d^\markup{D} a' fis a d, a' fis a 
         | d^\markup{D} e fis e d cis b a 
         | e'^\markup{A} a, fis' a, g' a, fis' a, 
         | \tuplet 3/2 {e'^Em fis e} \tuplet 3/2 {d cis b} \tuplet 3/2 {a^\markup{A7} b a} \tuplet 3/2 {g fis e} 
         | d8^\markup{D} a' fis a d, a' fis a
         | d^\markup{D} e fis e d cis b a 
         | e'4^\markup{A7} fis \tuplet 3/2 {g8 fis e} cis e  
   }
     \alternative {
      { d4^\markup{D} fis d  a8^\markup{A} fis|}
      { d'4^\markup{D} fis d  cis8 d |}
    }	
      \repeat volta 2 {
         e8^\markup{A} a, a a fis'^\markup{D} a, a a 
         | g'^\markup{A7} a, fis' a, e'^\markup{D} a, a a 
         | e'^\markup{A} a, fis' a, g' a, fis' a, 
         | \tuplet 3/2 { e'^\markup{Em} fis e} \tuplet 3/2 { d cis b} \tuplet 3/2 { a^\markup{A7} b a} \tuplet 3/2  {g fis e} 
         | d8^\markup{D} a' fis a d, a' fis a 
         | d^\markup{D} e fis e d cis b a 
         | e'4^\markup{A7} fis4 \tuplet 3/2 {g8 fis e} cis e
      }
         \alternative {
            { d4^\markup{D} fis d  cis8 d }
            { d4^\markup{D} fis d2 }
         }
   %\bar ":|."
}

keyofftocalifornia = {
  \key g \major
  \time 4/4
    %\tempo 4 = 125
}

offtocalifornia = \relative c'{
  \keyofftocalifornia
  \dynamicUp
  \partial  4
     \tuplet 3/2 {d8 e fis}
   \repeat volta 2
     {
       g8^\markup{G} fis g b a^\markup{D} g e d | g^\markup{G} b d g e4^\markup{C} \tuplet 3/2 {d8 e fis}
       | g8^\markup{G} fis g d e^\markup{Em} d b g
       | a^\markup{Am} b a g e4^\markup{D} \tuplet 3/2 {d8 e fis}
       | g8^\markup{G} fis g b a^\markup{D} g e d | g^\markup{G} b d g e4^\markup{C} \tuplet 3/2 { d8 e fis}
       | g8^\markup{G} fis g d e^\markup{Em} d b g |
     }
     \alternative {
      { \tuplet 3/2 {a8^\markup{D} b a} \tuplet 3/2 {fis4 a g^\markup{G}} \tuplet 3/2 { d8 e fis} |}
      { \tuplet 3/2 {a8^\markup{D} b a} \tuplet 3/2 {fis4 a g^\markup{G}} \partial  4\tuplet 3/2 { d'8 e fis} }
    }	
      \repeat volta 2 {
        | g^\markup{E} fis e g fis^\markup{Bm} e d fis
        | e^\markup{C} d e fis e^\markup{Em} d b d
        | g^\markup{G} fis g d e^\markup{Em} d b g
        | a^\markup{Am} b a g e4^\markup{D} \tuplet 3/2 {d8 e fis}
        | g^\markup{G} fis g b a^\markup{D} g e d
        | g^\markup{G} b d g e4^\markup{C} \tuplet 3/2 {d8 e fis}
        | g8^\markup{G} fis g d e^\markup{Em} d b g
         }
         \alternative {
            { \tuplet 3/2 {a8^\markup{D} b a} \tuplet 3/2 {fis4 a g} \tuplet 3/2 {d'8^\markup{G} e fis} }
            { \tuplet 3/2 {a,8^\markup{D} b a} \tuplet 3/2 {fis4 a g} d4^\markup{G} }
         }
   \bar "|."
}

\score {
  \header { piece = "The Harvest Home" }
  \new Staff { \harvesthome }
}

\score {
  \header { piece = "Off to California" }
  \new Staff { \offtocalifornia }
}