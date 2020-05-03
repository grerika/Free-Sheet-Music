#(set-default-paper-size "a4" 'portrait)

\version "2.18"
\header {
  title = "The Swallowtail + Morrison's jig"
  enteredby = "grerika @ github"
  tagline = "Last update: 05/02/2019 (Gobliners)"
}

global = {
  \key d \major
  \time 6/8
}


swallowtail = \relative c' {
  \global
  \dynamicUp
  \bar ".|:" 
    g'8^Em e e b' e, e | g e g b a g | fis^D d d a' d, d | d' cis d a g fis | 
    g^Em e e b' e, e | g e g b4 cis8 | d8^D cis d a g fis | g^Em e e e4. |
  \bar ":|.|:"
  \break
    b'8 cis d e4 fis8 | e4 fis8 e d b | b cis d e4 fis8 | e d b d4.^D |
    \break
    b8 cis d e4^Em fis8 | e4 fis8 e d b | d^D cis d a g fis | g^Em e e e4. 
  \bar ":|."
}


morrisons = \relative c' {
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
  \header {
    piece = "The Swallowtail"
    arranger = "Traditional Irish"
  }
  \new Staff { \swallowtail }
}


\score {
  \header {
    piece = "Morrison's jig"
    arranger = "Traditional Irish"
  }
  \new Staff { \morrisons }
}