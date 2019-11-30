#(set-default-paper-size "a4" 'portrait)
#(set-global-staff-size 24 )

\version "2.16.2"
\header {
  title = "Tókirálynő, Folyókirály"
  arranger = "Erdei Rezervátum"
  enteredby = "grerika @ github"
  lastupdated = "11/30/2019"
  tagline = ""
}

global = {
  \key e \minor
  \time 3/4
  \tempo "Adagio" 4 = 58
}


DCfine = {
  \once \override Score.RehearsalMark #'break-visibility = #'#(#t #t #f)
  \mark \markup { \small "D.C. al fine" }
}


Fine = {
  \once \override Score.RehearsalMark #'break-visibility = #'#(#t #t #f)
  \mark \markup { \small \italic "fine" }
}


voice = \relative c'' {
  \global
  \dynamicUp
   | a2^Am\< c4 | e2 g4 | fis2^Em g4 | e2 d4 | a2^Am c4 | e2 d4 | b2^Em c4 \!| b2 r4 
   | a2^Am c4 | e2 g4 | fis2^Em g4 | e2 d4 | a2^Am c4 | b2^G c4 | b2^Em e4 | a,2^Am r4
   | a'2^Am\> g4 | fis2 g4 | fis2^Em e4 | dis2 e4 | a2^Am g4 | fis2 e4 | fis2^Em e4 | g2^G r4\!
   | a2^Am g4 | fis2 e4 | dis2^Em e4 | c2 b4 | a2^Am c4 | b2^G c4 | b2^Em e4 | a,2^Am r4 
  \bar ":|."
    
}



verse = \lyricmode {
  % Lyrics follow here.
  Tó -- ki -- rály -- nő szá -- raz lá -- bán Hol -- ló szár -- nyán mesz -- sze száll.
  Fel -- hők or -- mán med -- rek gyom -- rán vár re -- á Fo -- lyó -- ki -- rály. 
  Szí -- vük csob -- ban hab -- juk for -- ran, el -- hál -- ják az ő -- si nászt.
  E -- ső mé -- lye, jég a vé -- re ser -- ken már az új ka -- lász.
}


verse_second = \lyricmode {
  % Lyrics follow here.
  Tó -- ki -- rály -- nő dom -- bok há -- tán új bér -- cek -- re el -- ta -- lál.
  Lel -- két fél -- tő hű gond -- já -- val re -- pí -- ti Fo -- lyó -- ki -- rály.
  Ná -- szuk hoz -- ta E -- ső hull ma ön -- tö -- zi a szá -- raz fát.
  Tő -- lük e -- red a dús Er -- dő mit csak em -- ber fia lát.
}

\score {
  \new Staff { \voice }
  \addlyrics { \set stanza = #"1. " \verse }
  \addlyrics { \set stanza = #"2. " \verse_second }
  
  \layout { }
  \midi {
    \context {
      \voice
    }
    \tempo 2 = 50
  }
}