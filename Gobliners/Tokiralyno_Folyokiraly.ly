\include "default-settings.ly"


\header {
  title = "Tókirálynő, Folyókirály"
  arranger = "Csanádi Viktor"
  tagline = "Utoljára frissítve: 2021. augusztus 4."
}

global = {
  \key e \minor
  \time 3/4
  \tempo "Adagio" 4 = 58
}

voice = \relative c'' {
  \global
  \dynamicUp
   | a2\< c4 | e2 g4 | fis2 g4 | e2 d4 | a2 c4 | e2 d4 | b2 c4 \!| b2 r4
   \break
   | a2 c4 | e2 g4 | fis2 g4 | e2 d4 | a2 c4 | b2 c4 | b2 e4 | a,2 r4
   \break
   | a'2\> g4 | fis2 g4 | fis2 e4 | dis2 e4 | a2 g4 | fis2 e4 | fis2 e4 | g2 r4\!
   \break
   | a2 g4 | fis2 e4 | dis2 e4 | c2 b4 | a2 c4 | b2 c4 | b2 e4 | a,2 r4
  \bar ":|."
}

harmonies = \chordmode {
  a2.:m a:m e:m e:m a:m a:m e:m e:m
  a2.:m a:m e:m e:m a:m g e:m a:m
  a2.:m a:m e:m e:m a:m a:m e:m g
  a2.:m a:m e:m e:m a:m g e:m a:m
}

verse = \lyricmode {
  Tó -- ki -- rály -- nő szá -- raz lá -- bán Hol -- ló szár -- nyán mesz -- sze száll.
  Fel -- hők or -- mán med -- rek gyom -- rán vár re -- á Fo -- lyó -- ki -- rály.
  Szí -- vük csob -- ban hab -- juk for -- ran, el -- hál -- ják az ő -- si nászt.
  E -- ső mé -- lye, jég a vé -- re ser -- ken már az új ka -- lász.
}


verse_second = \lyricmode {
  Tó -- ki -- rály -- nő dom -- bok há -- tán új bér -- cek -- re el -- ta -- lál.
  Lel -- két fél -- tő hű gond -- já -- val re -- pí -- ti Fo -- lyó -- ki -- rály.
  Ná -- szuk hoz -- ta E -- ső hull ma ön -- tö -- zi a szá -- raz fát.
  Tő -- lük e -- red a dús Er -- dő mit csak em -- ber fi -- a lát.
}

\score {
  <<
      \new ChordNames {
        \set noChordSymbol = ""
        \set chordChanges = ##t
        \harmonies
      }
    \voice
    \addlyrics { \set stanza = #"1. " \verse }
    \addlyrics { \set stanza = #"2. " \verse_second }
  >>

  \layout { }
  \midi {
    \context {
      \voice
    }
    \tempo 4 = 58
  }
}
