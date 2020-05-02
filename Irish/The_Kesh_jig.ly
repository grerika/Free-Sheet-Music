%#(set-default-paper-size "a5" 'landscape)
#(set-default-paper-size "a4" 'portrait)
%#(set-global-staff-size 26)

\version "2.18"
\header {
  title = "The Kesh"
  arranger = "Traditional Irish"
  enteredby = "grerika @ github"
  tagline = "Last update: 11/22/2019 (Gobliners)"
}

global = {
  \key g \major
  \time 6/8
}

voice = \relative c' {
  \global
  %\dynamicUp
  \bar ".|:"
  g'4^G g8 g8 a b | a4^D a8 a8 b d | e^C d d g^G d d | e^C d b d^D b a |
  g4^G g8 g8 a b | a4^D a8 a8 b d | e8^C d d g^G d d | b^D a fis g4.^G  
  \bar ":|.|:"
  \break
  b4^G b8 d4 d8 | e8^C g e d^G b a | b4^G b8 d b g | a^D b a a g a | 
   b^G a b d cis d | e^C g e d^G b d | g^C fis g a^D g a | b^G g g g4. 
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