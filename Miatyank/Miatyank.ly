#(set-default-paper-size "a5" 'landscape)

\version "2.16.2"
\header {
  title = "Miatyánk"
  tagline = ""
}

global = {
  \key c \major
  \time 4/4
}

voice = \relative c' {
  \global
  \dynamicUp
  % Music follows here.
  e8. e16 e2 \times 2/3 {e8 e e}  
  g8 g8 g2 g8 a8 | g f f2  \times 2/3 {c8 c d} | 
  e2 r4 e8. f16 | e8 (d d2) d16 d e8 | d8 c8 ( c2) c8. d16 | 
  c8 (b b2)   \times 2/3 {b8 c b}  a2. r4 | 
  e'8 e8 e8 e4. r8 e16 e | g8 g8 (g2) g8 a g f (f2) c8 d | e2. e16 f8. |
  e8 (d d4..) d16 d8. e16 d8 c (c2)  \times 2/3 {c8 c d} | c8 b (b2) c8 b | a2.
  a16 a8. | e'8 e4. (e8) r16 e16 e16 e8.| g8 g8 (g4) r8 g8 g16 a8. |
  g8 f4. (f8) r16 c16 c16 d8. | e2 (e16) r16 e8 e16 e8 f16|
  e8 d8 (d2) d8. e16| d8 c c2 c16 c8 d16 | c16 b8. b2 c8 (b) | a2 r2  \bar "|." 
}

verse = \lyricmode {
  % Lyrics follow here.
  Mi -- a -- tyánk, ki vagy a meny -- nyek -- ben, szen -- tel -- tes -- sék meg
  a te ne -- ved! Jöj -- jön el a te or -- szá -- god, le -- gyen meg a -- ka -- ra -- tod!
  Min -- den -- na -- pi ke -- nye -- rün -- ket add meg ne -- künk, jó U -- runk! 
  S_bo -- csásd meg a vét -- ke -- in -- ket, mi -- kép -pen mi is egy -- más -- nak.
  S_ne vígy min -- ket a kí -- sér -- tés -- be, de sza -- ba -- díts meg a go -- nosz -- tól, 
  mert ti -- éd az or -- szág és a ha -- ta -- lom, ti -- éd a di -- cső -- ség. Á -- men!
}

\score {
  \new Staff { \voice }
  \addlyrics { \verse }

}
