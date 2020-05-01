#(set-default-paper-size "a4" 'portrait)
#(set-global-staff-size 24)

\version "2.18"
\header {
  title = "The King of the Fairies"
  arranger = "Hornpipe, Ireland, traditional"
  enteredby = "grerika @ github"
  tagline = "Last update: 11/22/2019 (Gobliners)"
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
        e8.^Em [d16 e8. fis16] g8. [fis16 g8. a16 ] |
        b8.^Em [c16 b8. a16] g8. [fis16 g8. a16] | 
        b4^Em e, [e8. fis16 g8. e16] |
        fis8.^D [g16 fis8. e16 ]  d4. d8 | 
        e8.^Em [d16 e8. fis16] g8. [fis16 g8. a16 ]| 
        b8.^Em [a16 g8. b16 ]d4.^D c8 | 
        b4^Em e, g8.^D [fis16 e8. d16 ]
    }
    \alternative {
        { e2^Em e4. d8  |}
        { e2^Em e4. b'8 |}
    }	 
        e4^Em e b8.[ d16 e8. fis16 ] | 
        g8.^Em [a16 g8. fis16 ]e4. fis8 | 
        e4^Em b b8. [a16 b8. cis16] | 
        d8.^D [e16 d8. cis16] b8. [cis16 d8. b16] |
        e4^Em e b8.[ d16 e8. fis16 ] | 
        g8.^Em [a16 g8. fis16 ] e8. [fis16 e8. d16] | 
        b8.^Em [d16 e8. g16] fis8.^D [e16 d8. fis16 ] | 
        e2^Em e4 fis 
    \bar ":|.|:" 
    \break
        g8.^G g16 \tuplet 3/2 {g8 fis e} fis8.^D fis16 \tuplet 3/2 {fis8 e d} | 
        e8.^G [d16 b8. cis16] d4.^D e8 | 
        d8.^D [b16 a8. fis16] g8.^G [a16 b8. cis16] | 
        d8.^D [b16 a8. fis16] g8.^G [fis16 e8. d16] |
        b'8.^Em [e,16 e8. d16] e8. [fis16 g8. a16] | 
        b4^Em e e8. [ d16 e8. fis16] | 
        e4^Em b b8.^D [a16 g8. fis16] | 
    e2^Em e4 r
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
