#(set-default-paper-size "a4" 'portrait)
%#(set-global-staff-size 24)

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
      r8 r4 r8 e fis  | 
      \repeat volta 2 {
        g_\markup{Em} \mark \markup { \musicglyph #"scripts.segno" } e e a e e      | 
        b'_\markup{Em} e, e c' b a | 
        b_\markup{Em} e, e e d e   | 
        fis_\markup{D} a g fis e fis | 
        g_\markup{Em} e e a e e |  
        b'_\markup{Em} e, e c' a b | 
        c_\markup{G} a g a b c |
      }
      \alternative {
        {d_\markup{D} c b a g fis }
        {d'_\markup{D} c b a g a}
      }
      \break
      \repeat volta 2 {   
        b_\markup{Em} r e e4 fis8 | 
        e8_\markup{Em} d b a g a | 
        b_\markup{Em} r e e4 fis8 |
        e_\markup{G} d b d4. | 
        b8_\markup{D} r e e4 fis8 | 
        g_\markup{D} fis e fis e d| 
      }
      \alternative {
           {e_\markup{Bm} d b a g a   | b e, e e4 r8 }
           {e' d b d b a  |  b a g a g fis 
               \mark \markup { \musicglyph #"scripts.coda" "" } }
      }
      \break
      \repeat volta 2 {
        g e e a e e | b' e, e c' b a | b e, e e d e |
        fis a g fis e fis g e e a e e | b' e, e c' a b | c a g a b c |
      }
      \alternative {
         { d c b a g fis }
         { d' c b a g a }
      }
      \break
      \repeat volta 2 {
         b8 r e8 e4 fis8 | e d b a g a | b r e e4 fis8 e d b d4. |
         b8 r e8 e4 fis8 | g fis e fis e d | 
      }
      \alternative {
        {e d b a g a | b e, e e4 r8 }
        {e' d b d b a | b a g a g fis }
      }       
      \break
      \bar ".|:"
       e e e g fis e | b' a b d b a | b b b b a b | g a b a fis d |
       e e e g fis e | b' a b d b a | b a g fis16 g a8 fis g e e e4. 
      \bar ":|.|:"
      \break
      \repeat volta 2 {
       e'4 fis8 g fis e|  g4 a8 b a g | d4 e8 fis e d | a' fis d fis e d |
       e4 fis8 g fis e | d fis e d b a | b a g fis16 g a8 fis
      }
      \alternative {
        %\set Score.repeatCommands = #(list (list 'volta voltaAdLib) )
         { e' b e d g fis }
         { g,^\markup { \small \italic "D.S. al Coda"} e e e e fis }
     }
    \bar ":|."
     \mark \markup { \musicglyph #"scripts.coda" "" } e2.   (e) (e) (e) 
     \bar "|."
}


\score {
  
  \new Staff {
    <<
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
