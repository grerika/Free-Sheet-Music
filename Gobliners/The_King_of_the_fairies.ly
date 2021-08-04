\include "default-settings.ly"

\header {
  title = "The King of the Fairies"
 % arranger = "Hornpipe, Tradicionális ír"
  arranger = "Tradicionális ír"
  tagline = "Utoljára frissítve: 2021. augusztus 4."
}

global = {
  \key d \major
  \time 4/4
    \tempo 4 = 125
}

voice = \relative c'{
  \global
  \dynamicUp
  \partial  8
  d8
   \repeat volta 2 {
    \bar ".|:"
        e8.  [d16 e8. fis16] g8. [fis16 g8. a16 ] |
        b8.  [c16 b8. a16] g8. [fis16 g8. a16] |
        b4  e, [e8. fis16 g8. e16] |
        fis8.  [g16 fis8. e16 ]  d4. d8 |
        e8.  [d16 e8. fis16] g8. [fis16 g8. a16 ]|
        b8.  [a16 g8. b16 ]d4.  c8 |
        b4  e, g8.  [fis16 e8. d16 ]
    }
    \alternative {
        { e2  e4. d8  |}
        { e2  e4. b'8 |}
    }
    \break
        e4  e b8.[ d16 e8. fis16 ] |
        g8.  [a16 g8. fis16 ]e4. fis8 |
        e4  b b8. [a16 b8. cis16] |
        d8.  [e16 d8. cis16] b8. [cis16 d8. b16] |
        e4  b b8.[ d16 e8. fis16 ] |
        g8.  [a16 g8. fis16 ] e8. [fis16 e8. d16] |
        b8.  [d16 e8. g16] fis8.  [e16 d8. fis16 ] |
        e2  e4 fis
    \bar ":|.|:"
    \break
        g8. g16 \tuplet 3/2 {g8 fis e} fis8.  fis16 \tuplet 3/2 {fis8 e d} |
        e8.  [d16 b8. cis16] d4.  e8 |
        d8.  [b16 a8. fis16] g8.  [a16 b8. cis16] |
        d8.  [b16 a8. fis16] g8.  [fis16 e8. d16] |
        b'8.  [e,16 e8. d16] e8. [fis16 g8. a16] |
        b4  e e8. [ d16 e8. fis16] |
        e4  b b8.  [a16 g8. fis16] |
    e2  e4 r
    \bar ":|."
}


harmonies = \chordmode {
  r8
  e2:m r e:m e:m e:m e2:m d d
  e:m e:m e:m d e:m d e:m r e:m e:m
  %
  e2:m r e:m r e:m e2:m d d
  e2:m r e:m r e:m d  e1:m
  %
  g2 d g d4 r4 d2 g d g
  e2:m r e:m r e:m d e:m
}


\score {
  <<
     \new ChordNames {
        \set noChordSymbol = ""
        \set chordChanges = ##t
        \harmonies
      }
      \voice
  >>
  \layout { }
  \midi {
    \context {
      \voice
    }
    \tempo 2 = 90
  }
}
