#(set-default-paper-size "a4" 'portrait)
%#(set-default-paper-size "a5" 'landscape)
%#(set-global-staff-size 22)

\version "2.18"
\header {
  title = "The Foggy Dew"
  arranger = "Traditional Irish Tune"
  enteredby = "grerika @ github"
  tagline = "Last update: 04/11/2020 (Gobliners)"  
  %instrument = "Tenor recorder"
}

global = {
  \key g \major
  \time 2/4
    %\tempo 4 = 125
}

voice = \relative c'{
  \global
  \dynamicUp
  \partial  4
  b'8 d
   \bar ".|:" 
       e4 d8 b | e4 d8 b | a4 b | d,4 e8 fis | g [b a g] | e4. d8 | e2 ( e4)
   \bar ":|."
   \break
     b'8 d  e4 d8 b | e4 d8 b | a4 b | d,4 e8 fis | g [b a g] | e4. d8 | e2 ( e4)
   \bar "||"
   \break
    e8 fis | g4 b | d c8 b | a4 a | b4 g8 a | b4 g'8 fis |  e8 [ d b d ] | e2 ( e4) 
   \bar "||"
   b8 d | e4 d8 b | e4 d8 b | a4^\markup{ritenuto} b | d,4 e8 fis | g8 [b a g] | e4. d8 | e2 ( e4) r4
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