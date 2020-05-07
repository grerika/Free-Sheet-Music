#(set-default-paper-size "a4" 'portrait)

\version "2.18"
\header {
  title = "The Swallowtail + Morrison's jig"
  enteredby = "grerika @ github"
  tagline = "Last update: 05/07/2019 (Gobliners)"
}

global = {
  \key d \major
  \time 6/8
}


swallowtail = \relative c' {
  \global
  \dynamicUp
  \bar ".|:" 
    g'8 e e b' e, e | g e g b a g | fis d d a' d, d | d' cis d a g fis | 
    g e e b' e, e | g e g b4 cis8 | d8 cis d a g fis | g e e e4. |
  \bar ":|.|:"
  \break
    b'8 cis d e4 fis8 | e4 fis8 e d b | b cis d e4 fis8 | e d b d4. |
    \break
    b8 cis d e4 fis8 | e4 fis8 e d b | d cis d a g fis | g e e e4. 
  \bar ":|."
}


harmoniesSwallowTail = \chordmode {
    e2.:m e:m d d e:m e:m d e:m
    e2.:m e:m d d e:m e:m d e:m
}

morrisons = \relative c' {
  \global
  \dynamicUp
  \bar ".|:" 
  e4 b'8 e,4 b'8 | e,4 b'8 a8 fis d | 
  e4. b'4 cis8 | d8 cis b a fis d | 
  \break
  e4 b'8 e,4 b'8 |  e,4 b'8  a8 fis d | 
  g4 g8 fis g a | b a g fis e d |
  \bar ":|.|:"
  \break
  b' e e fis e e | a e e fis e d | 
  b e e fis e e |   a4 g fis | 
  b,8 e e fis e e| a e e fis e fis | 
  g fis e d4 a8 | b8 a g fis e d 
  \bar ":|.|:"
  \break
  b' e e fis e e | a e e fis e e | 
  b e e fis e fis | g a g d e fis | 
  g4 g8 g fis e | d e fis g4 d8 | 
  e d cis d4 a8 | b a g fis e d 
  \bar "||"
    e2.^\markup{\italic end} 
  \bar "|." 
     e8^\markup{transition} [e e] fis [fis fis ] g [g g]  a8^\markup{\italic rit.} b8 d8 
  \bar "|."
}



harmoniesMorrisons = \chordmode {
     e2.:m e4.:m d e2.:m  g4. d e2.:m e4.:m d g2. g4. d
     e2.:m e e d e e g4.    d e:m d
     e2.:m e:m e:m g4. d g2. 
     d4. g e:m d g d 
}

\score {
  \header {
    piece = "The Swallowtail"
    arranger = "Traditional Irish"
  }
  <<
     \new ChordNames {
        \harmoniesSwallowTail
     }
     \swallowtail 
    
  >>
}


\score {
  \header {
    piece = "Morrison's jig"
    arranger = "Traditional Irish"
  }
    <<
       \new ChordNames {
        \harmoniesMorrisons
      }
      \morrisons 
    >>
 
  \layout { }
  \midi {
    \tempo 2 = 90
  }
}