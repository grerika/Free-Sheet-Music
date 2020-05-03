%#(set-default-paper-size "a5" 'landscape)
#(set-default-paper-size "a4" 'portrait)
%#(set-global-staff-size 26)

\version "2.18"
\header {
  title = "The Kesh + Merrily kissed the Quaker's Wife"  
  enteredby = "grerika @ github"
  tagline = "Last update: 05/03/2019 (Gobliners)"
}

global = {
  \key g \major
  \time 6/8
}

keshjig = \relative c' {
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


keymerrily = {
  \key g \major
  \time 12/8
}

merrily = \relative c' {
  \keymerrily
  \dynamicUp
  \partial 8
%\bar ".|:"
  d8%^\markup{\italic V} %Viktor
    | g^G a b d,4 b'8 c4^C a8 b^G g e
    | g^G a b d, e g a4.^D a8 g8 e
    | g^G a b d,4 b'8
    | c4^C a8 b^G g e
    | g^G a b d,4^D e8 g2^G  r8  d8%^\markup{V + E} %Viktor + Erika
    | g8 a b d,4 b'8 c4 a8 b g e
    | g a b d,8 e8 g8 a4 a8 a4 e8
    | g a b d,4 b'8  c4 a8 b g e
    | g a b d,8 e fis g4 g8 g4 
  \bar "||" %\bar ":|.|:"
    | a8%^\markup{E}
    |  b8^G g g a^D g g b^G g g a^C g e
    | g^G a b d, e g a4.^D a8 g a
    | b^G g g a^D g g b^G g g a^C g e
    |  g^G a b  d,4^D e8 g2^G r8 g8%^\markup{E + V}
    |   b8^G g g a^D g g b^G g g a^C g e
    | g^G a b d,4 e8 a4^D  a8 a4.
    | g8^G a g fis8^D g fis
    | e^C fis e  d^D e d
    | g^G a b d,^D e fis g4^G g8 g4
  \bar ".|:"
    | d'8    g4^G g8 a8^D g a b^G  a g e4 d8
    | g4 g8 g8 a b a4^D a8 a4.
    | g8^G a g fis8^D g fis
    | e^C fis e  d^D e d
    | g^G a b d,^D e fis g4^G g8 g4.
  \bar ":|."
}



\score {
  \header {
    piece = "The Kesh"
    opus = "jig"
    %arranger = "Traditional Irish"
  }
  \new Staff { \keshjig }
}


\score {
  \header { 
      piece = "Merrily Kissed The Quaker's Wife"
     %arranger = "Traditional Irish"
  }
  \new Staff { \merrily }
}