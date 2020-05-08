#(set-default-paper-size "a4" 'portrait)

% source https://www.irish-folk-songs.com/dirty-old-town-sheet-music-and-tin-whistle-notes.html
\version "2.18"
\header {
  title = "Dirty Old Town"
  composer = "Written by Ewan McColl"
  arranger = "Hungarian lyrics: Csanádi Viktor"
  enteredby = "grerika @ github"
  tagline = "Last update: 05/08/2020 (Gobliners)"  
}

global = {
  \key g \major
  \time 4/4
}

voice = \relative c' {
  \global
  \dynamicUp
  \partial 2.
    d4 e g 
    | b1 (b4) a8 g b4 g |
    d1 (d2) b'4 d | 
    e1 (e4) d8 b a4 g |
    b1 b4 r e d | b1 (b4) a8 g b4 g |
    d1 (d2) e8 g b4 | 
    a1 (a4) r a8 g e4 | e1 (e4)
    \bar "||"
}


verseENG = \lyricmode {
  % Lyrics follow here.
  I met my love by the gas yard wall dreamed the dream by the old ca -- nal
  I kissed my girl by the f -- ory wall dir -- ty old town dir -- ty old town.
}

verseHUN = \lyricmode {
  Meg -- lát -- tam őt a gáz -- gyár fa -- lá-nál
  És ál -- mo -- doz -- tam a vén csatornánál
  Meg -- csó -- kol-tam még a gyár falai -- nál
  Mocs -- kos vén táj
  Mocs -- kos vén táj
}

verseHUNtwo = \lyricmode {
  Fel -- hők úsz -- tak a Hold ár -- nyé -- ká-ban
  Macs -- kák nyávogtak a dal rit -- mu -- sá-ban
  Ta -- va -- szi_lány az éj út -- já -- ban
}

verseHUNthree = \lyricmode {
  Egy szir -- én a dokk mé -- lyé -- ről
  És egy vo -- nat szá -- guld a tűz éjéből
  A tavaszi szél szagos a füstjétől
}


verseHUNfour = \lyricmode {
  Hol -- nap csi -- ná -- lok egy jó é -- les bal -- tát
  Tűz -- ben ed -- zett, i -- gen jó faj -- tát
  És le -- da -- ra -- bol -- lak, mint a tűz -- re való fát
}

harmonies = \chordmode {
  d4 g a b1 r4 g8 a8 b4 g4 d1 r2 b4 d4 e1 r4 d8 b8 a4 g4 d1
  r2 e4 d b1 r4 g8 a8 b4 g4 d1 r2 d8 g8 b4 a1 r2 a8 g8 e4 e1
}

\score {
  <<
      \new ChordNames {
        \set noChordSymbol = "" 
        \set chordChanges = ##t
        \harmonies
      }
      \voice 
      \addlyrics { 
        \set stanza = #"English: "  
        \verseENG
      }
  >>

  \layout { }
  \midi {
    \tempo 2 = 80
  }
}


\markup {
  \fill-line {
    \hspace #0.1 % moves the column off the left margin;
     % can be removed if space on the page is tight
     \column {
      \line { \bold "1."
        \column {
          "Megláttam őt a gázgyár falánál"
          "És álmodoztam a vén csatornánál"
          "Megcsókoltam még a gyár falainál"
          "Mocskos vén táj, mocskos vén táj"
        }
      }
      \combine \null \vspace #0.1 % adds vertical spacing between verses
      \line { \bold "2."
        \column {
          "Felhők úsztak a Hold árnyékában"
          "Macskák nyávogtak a dal ritmusában"
          "Tavaszi lány az éj útjában"
          "Mocskos vén táj, mocskos vén táj"
        }
      }
    }
    \hspace #0.1 % adds horizontal spacing between columns;
    \column {
      \line { \bold "3."
        \column {                  
            "Egy szirén a dokk mélyéről"
            "És egy vonat száguld a tűz éjéből"
            "A tavaszi szél szagos a füstjétől"
            "Mocskos vén táj, mocskos vén táj"
        }
      }
      \combine \null \vspace #0.1 % adds vertical spacing between verses
      \line { \bold "4."
        \column {               
          "Holnap csinálok egy jó éles baltát"
          "Tűzben edzett, igen jó fajtát"
          "És ledarabollak, mint a tűzre való fát"
          "Mocskos vén táj, mocskos vén táj"
        }
      }
    }
  \hspace #0.1 % gives some extra space on the right margin;
  % can be removed if page space is tight
  }
}

