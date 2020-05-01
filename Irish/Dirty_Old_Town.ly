#(set-default-paper-size "a4" 'portrait)

% source https://www.irish-folk-songs.com/dirty-old-town-sheet-music-and-tin-whistle-notes.html
\version "2.18"
\header {
  title = "Dirty Old Town"
  arranger = "Hungarian lyrics: Csanádi Viktor"
  composer = "Written by Ewan McColl"
   enteredby = "grerika @ github"
  lastupdated = "04/28/2020"
   tagline = "Last update: 04/28/2020 (Gobliners)"  
}

global = {
  \key g \major
  \time 4/4
}

flute = \relative c' {
  \global
  \dynamicUp
  \partial 2.
    d4^\markup{D} e^\markup{G} g ^\markup{A}
    | b1^\markup{B} (b4) a8^\markup{G} g^\markup{A} b4^\markup{B} g^\markup{G} |
    d1^\markup{D} (d2) b'4^\markup{B} d^\markup{D} | 
    e1^\markup{E} (e4) d8^\markup{D} b^\markup{B} a4^\markup{A} g^\markup{G} |
    b1^\markup{D} (b4) r e^\markup{E} d^\markup{D} | b1^\markup{B} (b4) a8^\markup{G} g^\markup{A} b4^\markup{B} g^\markup{G} |
    d1^\markup{D} (d2) e8^\markup{D} g^\markup{G} b4^\markup{B} | 
    a1^\markup{A} (a4) r a8^\markup{A} g^\markup{G} e4^\markup{E} | e1^\markup{E} (e4)
    \bar "||"
}


verseENG = \lyricmode {
  % Lyrics follow here.
  I met my love by the gas yard wall dreamed the dream by the old ca-nal
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

\score {
  \new Staff { 
     <<
         
          \flute 
    >>
  }
  \addlyrics { \set stanza = #"English: "  \verseENG }
  \addlyrics { \set stanza = #"Magyar 1: " \verseHUN }
  \addlyrics { \set stanza = #"Magyar 2: " \verseHUNtwo }
  \addlyrics { \set stanza = #"Magyar 3: " \verseHUNthree }
  \addlyrics { \set stanza = #"Magyar 4: " \verseHUNfour }
  \layout { }
  \midi {
    \context {
      \flute
    }
    \tempo 2 = 90
  }
}


