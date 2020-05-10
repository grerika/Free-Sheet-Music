#(set-default-paper-size "a4" 'portrait)
%#(set-default-paper-size "a5" 'landscape)
%#(set-global-staff-size 22)

\version "2.18"
\header {
  title = "The Foggy Dew"
  composer = "Traditional Irish Tune"
  arranger = "Hungarian lyrics: Csanádi Viktor"
  enteredby = "grerika @ github"
  tagline = "Last update: 05/08/2020 (Gobliners)"  
}

global = {
  \key g \major
  \time 2/4
    %\tempo 4 = 125
}

voice = \relative c'{
  \global
  \dynamicUp
  \partial  4
  b'8 d
   \bar ".|:" 
       e4 d8 b | e4 d8 b | a4 b | d,4 e8 fis | g [b a g] | e4. d8 | e2 ( e4)
   \bar ":|."
   \break
     b'8 d  e4 d8 b | e4 d8 b | a4 b | d,4 e8 fis | g [b a g] | e4. d8 | e2 ( e4)
   \bar "||"
   \break
    e8 fis | g4 b | d c8 b | a4 a | b4 g8 a | b4 g'8 fis |  e8 [ d b d ] | e2 ( e4) 
   \bar "||"
   b8 d | e4 d8 b | e4 d8 b | a4_\markup{ritenuto} b | d,4 e8 fis | g8 [b a g] | e4. d8 | e2 ( e4) r4
   \bar "|."
}


harmonies = \chordmode {
   r4
   e2 e d  g  e  d e
   e4 r e r e r 
   d2  g e  d e e 
   g g d4 r d r
   g2 e4:m r e2:m
   r e:m e:m d d 
   g a  e
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



\markup \small {
  \fill-line {
    %\hspace #0.1 % moves the column off the left margin;
     % can be removed if space on the page is tight
     \column {
      \line { \bold "1."
        \column {
          "Éépp hajnaal volt húúsvéétkor, ahogy váágtáztam a völgyben én"
          "Duda sem szólt és hallgattak a dobok, áám Liffey harangja még zenélt"
          "(aa) Zászlaja büszkén megfeszült, éés éreztem a harc heevét"
          "Hiszen Ír honban elmúlni dicsőség, hőős ki itt onthatja véérét"

        }
      }
      \combine \null \vspace #0.5 % adds vertical spacing between verses
      \line { \bold "2."
        \column {
          "Erős férfiak rohantak a mezőn, míg az aangool ágyú szólt"
          "Sötét éjben a puskák morajlása, miint albioni nóta volt"
          "Ólom esőn aa büszkeség, minden hű szívet lobogóra varrt"
          "De a bátrak és bátrabbak mind oda, éértüük szól a gyászharang"
        }
      }
    
    \combine \null \vspace #0.5 % adds vertical spacing between verses      
    \line { \bold "3."
        \column {       
          "És a viláág ámul a csapaton aki meegvíívta haarcát"
          "Ahogy újra a lovammal itt járok, még vérük áztatja a patát"
          "Ha még álmodoom a napról, aa szívembe most is kín hatol"
          "Aa szolga idő máár halványul, de dicső nyomotok ott a harmaton"
        }
      }
    }
  }
}