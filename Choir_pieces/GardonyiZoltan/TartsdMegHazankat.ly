\header {
  title = "Tartsd meg hazánkat, Isten!"
  composer = "Gárdonyi Zoltán"
  subtitle =  "Háromszólamú kánon"
  tagline = ##f
}

\relative b' {
  \repeat volta 2 {
    \tempo "Maestoso" 4 = 84
  \time 4/4
  \key es \major  
  bes^\markup{ \rounded-box "1" } es,  f16 f8. g4 
  as2 g4 r4
  bes4 bes es d
  c2 bes4 r4
  g2 c2
  bes4 es, f g 
  f1 es2\fermata r2
  %
  es8^\markup{ \rounded-box "2" } es4 es8 d4 es4 
  f8 f4 f8 es4 f4
  g8 g4 g8 f4 g4
  as8 as4 as8 g4 as4
  bes8 bes4. bes4 as4
  g2 f4 es4
  c'2 d2
  es4 \fermata\breathe c bes as 
  g^\markup{ \rounded-box "3" } bes2 es,4
  es d es r 
  es d c bes c d es f 
  g4. g8 f2
  bes2 as4 g4
  as g f2
  g4. f8 g4 as4\fermata
   }
}

\addlyrics {
  Tartsd meg ha -- zán -- kat Is -- ten
  Esd -- ve ké -- rünk Té -- ged
  Lé -- gyen bő ál -- dá -- sod raj -- tunk
  Hi -- á -- ba bí -- zunk, hi -- á -- ba é -- lünk,
  Hi -- á -- ba küz -- dünk, hi -- á -- ba vér -- zünk,
  ha nincs raj -- tunk Is -- te -- nünk ál -- dá -- sa,
  az Is -- ten ál -- dá -- sa min -- den -- kor.
  Ké -- ré -- sünk ma fel -- száll hoz -- zád 
  é -- ne -- künk szár -- nyán, hogy 
  hall -- gass meg, Óh, ha ké -- rünk:
}
