%#(set-default-paper-size "a4" 'portrait)
#(set-default-paper-size "a5" 'landscape)
%#(set-global-staff-size 26)

\version "2.18"
\header {
  title = "The Swallowtail"
  arranger = "Traditional Irish"
  enteredby = "grerika @ github"
  tagline = ""
  %tagline = "Last update: 11/22/2019 (Gobliners)"
}

global = {
  \key d \major
  \time 6/8
}


voice = \relative c' {
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