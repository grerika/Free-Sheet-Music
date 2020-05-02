%#(set-default-paper-size "a4" 'portrait)
#(set-default-paper-size "a5" 'landscape)
%#(set-global-staff-size 22)

\version "2.18"
\header {
  title = "Off To California"
  enteredby = "grerika @ github"
  tagline = "Last update: 11/28/2019 (Gobliners)"
}

global = {
  \key g \major
  \time 4/4
    %\tempo 4 = 125
}

voice = \relative c'{
  \global
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
      { \tuplet 3/2 {a8^\markup{D} b a} \tuplet 3/2 {fis4 a g^\markup{G}} \partial  4\tuplet 3/2 { d'8 e fis} |}
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
  \new Staff { \voice }
  \layout { }
  \midi {
    \context {
      \voice
    }
    \tempo 2 = 90
  }
}
