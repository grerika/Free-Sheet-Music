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
  |g^G a b d,4 b'8 c4^C a8 b^G g e| g^G a b d, e g a4.^D a8 g8 e | g^G a b d,4 b'8 | c4^C a8 b^G g e |g^G a b d,4^D e8 g2^G  r8   d8|
  g8 a b d,4 b'8 c4 a8 b g e| g a b d,8 e8 g8 a4 a8 a4 e8 | g a b d,4 b'8  c4 a8 b g e |g a b d,8 e fis g4 g8 g4 \bar ":|.|:"
  a8 |  b8^G g g a^D g g b^G g g a^C g e | g^G a b d, e g a4.^D a8 g a | b^G g g a^D g g b^G g g a^C g e|  g^G a b  d,4^D e8 g2^G r8 g8 
  |   b8^G g g a^D g g b^G g g a^C g e | g^G a b d,4 e8 a4^D  a8 a4. 
  g8^G a g fis8^D g fis | e^C fis e  d^D e d | g^G a b d,^D e fis g4^G g8 g4
  \bar ":|.|:" 
  d'8    g4^G g8 a8^D g a b^G  a g e4 d8  | g4 g8 g8 a b a4^D a8 a4.|g8^G a g fis8^D g fis | e^C fis e  d^D e d | g^G a b d,^D e fis g4^G g8 g4.
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


