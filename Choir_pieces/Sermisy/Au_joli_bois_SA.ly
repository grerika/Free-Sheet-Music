#(set-global-staff-size 19)

\version "2.16.2"
\header {	
    tagline = "Alt szólama alatt a francia dalszöveg fonetikus átirata - French lyrics with Hungarian pronounciation"
      title = "Au joli bois"
      composer = "Claudin de Sermisy (1490-1562)"
}
global = {
  \key es \major
  \time 4/4  
}
sopranoMusic = \relative { \clef "treble"
  c'2 c4 c |c2. es4 | d4. c8 bes4 a | bes1  |
  bes2 as4 g4 | f2. g4 | as4 c bes4. as8 | g4 (f2 e4) | f1
  | c'2 c4 c | c2. es4 | d4. c8 bes4 a4 | bes1|
  bes2 as4 g | f2. g4 | as4 c bes4. as8 | g4 (f2 e4) |f1|
  f'2 f4 f4 |  es4. d8 c4 es4 | d4 c4 c b| c1 | f2 f4 f4|
  es4. d8 c4 es4 | d4 c c b | c1 | c2 as4 c4 | bes2 g2|
  as2 f4 as| g2 es2| f2 des4 f es2 c | r4 c es f 
 | g4. (f8) g4 as4 (as8 g8)  g2 f4|  g1|
  c2 as4 c | bes2 g | as f4 as | g2 es|  f2 des4 f| es2 c| r4 c es f | g4. f8 g4 as | g f2 e4| f1\fermata \bar "|."
   
}

sopranoWords = \lyricmode {
  Au jo -- li bois, en   l'om -- bre d'un sou -- ci
  Me faut al -- ler pour pas -- ser ma tri -- stes -- se;
  Ram -- pli de deuil, d'un sou -- ve -- nir tran -- si,
  Man -- ger ma faut main -- tes poi -- res d'an gois --  se.
  Dans un jar -- din - - rem -- pli de noi -- res fleurs, De mes deux
  yeux - - fe -- rai lar -- mes et pleurs. 
  Fi de li -- es- se
  Et har -- di -- es -- se! 
  Re -- gret mop -- res -- se 
  Puis -- que j'ai per -- du mes -- a - mours. 
  Las! trop j'en -- du -- re Le temps me du -- re 
  Je vous as -- su -- re Seu -- les vois n'a - - vez plus de - coeurs!
}


altoMusic = \relative {  \clef "treble"
  as'2 as4 as4 | as2. c4 | bes4. as8 g4 f4 ( f4 es4 f2) |
  g4 g f es| f (c d) es| c f2 f4 |es8 (d c bes) c2 | c1|
  as'2 as4 as4 | as2. c4 | bes4. as8 g4 f4 ( f4 es4 f2) |
  g4 g f es| f (c d) es| c f2 f4 |es8 (d c bes) c2 | c1|
  f2 f4. g8 | as4 g2 g4 | bes4. as8 g4 g4 | es1 | f2 f4. g8 | 
  as4 g2 g4 | bes4. as8 g4 g4 | es1 | as2 es4 f4 |g2 es2
  | f2 c4 d4 | es2 c2 | des2 as4 bes4 | c2 c2 | r4 es4 c4 d4|
  es2. es4 | es2 d2| c1| as'2 es4 f4 | g2 es2 | f2 c4 d4| es2 c2|
  des2 as4 bes4| c2 c2 | r4  es4 c4. d8 | es2 f4. es8 | d4 bes4 c2 | c1 \fermata

}
altoWords = \lyricmode {
  Ó zso -- li boa, an lomb -- rö dön szu -- szi
  Mö fót al -- lé   púr pasz -- szé ma tri -- szte  szö;
  Ramp -- li dö dőly, dőn szu -- vö -- nir tran -- szi,
  Man -- zsé mö fó -- men -- tö pa -- rö dan -- goa -- szö.
  Dan zön - zsar -- den ram -- pli dö noa -- rö flőr,
  Dö mé - dö zjö fö -- ré lar mö é plőr
  Fi dö li -- e -- sszö É ár -- di -- e -- sszö!
  Rög re mop -- re -- sszö. 
  Püis -- kö zsé per -- dü méz -- a -- múr. Lá! Tro zsan -- dű -- rö! 
  Lö tam mö dű -- rö,
  Zsö vu za -- sszű -- rö: Szöl -- lö vu na  vé - plü - dö -- kőr!
}

\score {
  <<  % combine ChoirStaff and PianoStaff in parallel
    \new ChoirStaff <<
      \new Staff = "sopranos" <<
        \set Staff.instrumentName = #"Szoprán"
        \new Voice = "sopranos" {
          \global
          \sopranoMusic
        }
      >>
      \new Lyrics \lyricsto "sopranos" {
        \sopranoWords
      }
      \new Staff = "altos" <<
        \set Staff.instrumentName = #"Alt"
        \new Voice = "altos" {
          \global
          \altoMusic
        }
      >>
      \new Lyrics \lyricsto "altos" {
        \altoWords
      }
    >>
  >>
}

