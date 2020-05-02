#(set-default-paper-size "a4" 'portrait)
#(set-global-staff-size 18)

\version "2.18.2"
\header {
  title = "Gallagher's Frolics"
  subtitle = "jig"
  enteredby = "grerika @ github"
  tagline = "Last update: 05/02/2020 (Gobliners)"
}

voltaAdLib = \markup {  \text \italic {  D.S. al Coda  } }
global = {
  \key e \minor
  \time 6/8
    %\tempo 4 = 125
 
}

flute = \relative c'{
  \global
    \repeat volta 2 {
      r8 r4 r8 e fis  | 
       g \mark \markup { \musicglyph #"scripts.segno" } e e a e e      | 
      b' e, e c' b a | b e, e e d e   | fis a g fis e fis | 
      \bar "||"
      \break
      g e e a e e |  b' e, e c' a b | c a g a b c d c b a g fis |
      \bar "||"
      g e e a e e | b' e, e c' b a | b e, e e d e | fis a g fis e fis |
      \bar "||"
      g e e a e e | b' e, e c' a b  | c a g a b c d c b a g a |
      \bar "||"
      b r e e4 fis8 | e8 d b a g a | b r e e4 fis8 |
      e d b d4. | b8 r e e4 fis8 | g fis e fis e d| e d b a g a | b e, e e4 r8 |
      \bar "||"
      b' r e e4 fis8 | e8 d b a g a | b r e e4 fis8 |
      e d b d4. | b8 r e e4 fis8 | g fis e fis e d| e d b d b a  |
      b a g a g fis  \mark \markup { \musicglyph #"scripts.coda" "" } 
      \bar "||" 
      g e e a e e | b' e, e c' b a | b e, e e d e |
      fis a g fis e fis 
      \bar "||"
      g e e a e e | b' e, e c' a b | c a g a b c | d c b a g fis |
      \bar "||"
      g e e a e e | b' e, e c' b a | b e, e e d e | fis a g fis e fis |
      g e e a e e | b' e, e c' a b | c a g a b c   | d c b a g a |
      %\bar "||"
      %b r e e4 fis8 |
      %e d b d4. | b8 r e e4 fis8 | g fis e fis e d | e d b a g a | b e, e e4 r8 |
      \bar "||"
       b8 r e8 e4 fis 8 | e d b a g a | b r e e4 fis8 e d b d4. |
       b8 r e e4 fis8 g fis e fis e d | e d b a g a b e, e e4 r8 
       \bar "||"
       b'8 r e e4 fis8 | e d b a g a | b r e e4 fis8 e d b d4.
       b8 r e e4 fis8 | g fis e fis e d e d b d b a |
       b a g a g fis |
       e e e g fis e | b' a b d b a | b b b b a g | g a b a fis d |
       e e e g fis e | b' a b d b a | b a g fis16 g a8 fis g e e e4. 
       \bar "||"
       e8 e e g fis e | b' a b d b a | b b b b a b | g a b a fis d | 
       e e e g fis e | b' a b d b a | g a g fis16  g a8 fis | g e e e4. 
       \bar "||"
       e'4 fis8 g fis e|  g4 a8 b a g | 
       d4 e8 fis e d | a' fis d fis e d |
       e4 fis8 g fis e | d fis e d b a | b a g fis16 g a8 fis |
       e' b e d g fis   | e4 fis8 g fis e | g4 a8 b a g 
       d4 e8 fis e d | a' fis d fis e d |
       e4 fis8 g fis e | d fis e d b a | b a g fis16 g a8 fis |
    }        

    \alternative {
        \set Score.repeatCommands = #(list (list 'volta voltaAdLib) )
         {g e e e e fis}
     }
    \bar ":|."
     \mark \markup { \musicglyph #"scripts.coda" "" } e2.   (e) (e) (e) 
     \bar "|."
}


\score {
  
  \new Staff {
    <<
    %\chords { Em Em }
    \flute 
    >>
  }
  \layout { }
  \midi {
    \context {
      \flute
    }
    \tempo 2 = 90
  }
}
