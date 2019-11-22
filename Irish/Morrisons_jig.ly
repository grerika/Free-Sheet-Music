#(set-default-paper-size "a4" 'portrait)
#(set-global-staff-size 26)

\version "2.16.2"
\header {
  title = "Morrison's Jig"
  arranger = "Traditional Irish"
  enteredby = "grerika @ github"
  lastupdated = "11/22/2019"
  tagline = "Gobliners"  
}

global = {
  \key d \major
  \time 6/8
}

voice = \relative c' {
  \global
  \dynamicUp
  \bar ".|:" 
  e4^Em b'8 e,4 b'8 | e,4 b'8 a8^D fis d | e4.^Em b'4 cis8 | d8^G cis b a^D fis d | e4^Em b'8 e,4 b'8 |  e,4 b'8  a8^D fis d | 
  g4^G g8 fis g a | b a g fis^D e d |
  \bar ":|.|:"
  b'^Em e e fis e e | a e e fis e d | b e e fis e e | a4^D g fis | b,8^E e e fis e e| a e e fis e fis| g^G fis e d4^D a8 | b8^Em a g fis^D e d 
  \bar ":|.|:"
  b'^Em e e fis e e | a e e fis e e | b e e fis e fis | g^G a g d^D e fis | g4^G g8 g fis e | d^D e fis g4^G d8 | e^Em d cis d4^D a8 | b^G a g fis^D e d 
  \bar "||"
    e2.^\markup{\italic end} 
  \bar "|." 
     e8^\markup{transition} [e e] fis [fis fis ] g [g g]  a8^\markup{\italic rit.} b8 d8 
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