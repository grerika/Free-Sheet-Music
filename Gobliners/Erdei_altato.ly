#(set-default-paper-size "a4" 'portrait)
%#(set-global-staff-size 24 )

\version "2.18"
\header {
  title = "Erdei altató"
  composer = "Grieg: Peer Gynt, Solvejg dala"
  arranger = "Szöveg: Csanádi Viktor"
  enteredby = "grerika @ github"
  tagline = "Last update: 05/09/2020 (Gobliners)"
}

global = {
  \key c \major
  \time 4/4
  \tempo 4 = 80
}


voice = \relative c' {
  \global
  \dynamicUp
     \partial 4 e4
     a4 b8 c d4 e8 f f e e c a4 a8 c 
     c (b) b gis gis16 e8. ~ e4 ~ e8 r8 r4 r4 
     %
     \break
     e4 
     a4 b8 c d4 e8 f f e e c a4 a8 c 
     c b b gis gis16 e8. ~ e4 ~ e8 r8 r4 r4 r8
     \break
     e8
     e8 gis b c a4 e'8 dis | b8 d8 d8 cis a4. a8 |
     c8 b b a e'4. (e,8)|
     e8 gis b c a e' e dis | b b d cis a4. a8 |
     c4. b8 b4. a8 | a2 (a8) r8\fermata   | e'4 \fermata     
  \bar "|."   
}

harmonies = \chordmode {
 
}

verse = \lyricmode {
  Még halk az er -- dő és csak egy ma -- dár -- ka száll, ő is ér -- ted sír -- do -- gál.
  A lib -- be -- nő lom -- bok közt csen -- des kar -- ne -- vál, egy kis szel -- lő lá -- gyan fúj -- dogál.
  De fel -- tá -- madt a szél, er -- dő mé -- lyén ő zenél, és a lel -- ked jár -- ja át.
  El -- mond egy me -- sét, mit szí -- vem el -- re -- gélt, és az ál -- mot hoz -- za rád.
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
      \verse 
    }
  >>
  
  \layout { }
  \midi {}
}




\markup \small {
  \fill-line {
      \combine \null \vspace #2 % adds vertical spacing between verses
     % can be removed if space on the page is tight
     \column {
      \line { %\bold "1."
        \column {
          "Még halk az erdő és csak egy madárka száll, ő is érted sírdogál."
          "A libbenő lombok közt csendes karnevál, egy kis szellő lágyan fújdogál."
          "De feltámadt a szél, erdő mélyén ő zenél, és a lelked járja át."
          "Elmond egy mesét, mit szívem elregélt, és az álmot hozza rád."
        }
      }
    }
  \hspace #0.1 % gives some extra space on the right margin;
  % can be removed if page space is tight
  }
}


