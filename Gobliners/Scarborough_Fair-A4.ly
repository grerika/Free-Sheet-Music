#(set-default-paper-size "a4" 'portrait)
%#(set-global-staff-size 28)

\version "2.18"
\header {
  title = "Scarborough Fair"
  composer = "England"
  arranger = "Magyar szöveg: Csanádi Viktor"
  enteredby = "grerika @ github"
  tagline = "Utoljára frissítve: 09/14/2020"% (Gobliners)"
}

global = {
  \key c \major
  \time 3/4
  \tempo "Leisurely, with a lilt"
%  \tempo 4 = 125
}

tune = \relative c' {
  \global
      d2-3 d4-3 | a'2-1 a4-1 | e-2 f-1 e-2 d2.-3 (d4) \breathe \break 
      a'-3 c-2 |  d2-1 c4-2 | a-3 b-1 g-2 | a2.-1 (a2) \breathe \break d4-1 |
      d2-1 d4-1 c2-2 a4-1 | a4-1 g-2 f-3 | e-4 c2 (c2.) \breathe \break |
        d2-3 a'4-1 g2-2 f4-1 | e-2 d-3 c-4 | d2-3 a'4-2 (d2.-1)
    \bar "|."
}


harp = \relative c {
  \global\clef F
      d4-3 a'2-1 | d,4-3 a'2-1 | c,4-3 g'2-1 | d4-3 a'2-1 \break
      f2-2 e4-4 | d4-4 a'2-1 | f2-2 e4-3 | d4-4 e-3 f-2 | \break
      g-1 f-2 e-3 | d4-4 a'2-1 | f2.-2 | f4-1 e-2 d-3
      c-4 c'2-1 | g2.-2 | d4-3 a'2-1 | c,4-3 g'2-1 | g4-1 f-2 e-3 |
      d-4 a'2-1 (a2.)
      \bar "|."    
}

harmonies = \chordmode {
}

verseHungarian = \lyricmode {
}

\score {
    <<      
    \new ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    
    \new GrandStaff <<
       \tune
      \new Staff \harp
    >> 

    \addlyrics \verseHungarian
    >>
}



\markup \small {
  \fill-line {    
     % can be removed if space on the page is tight
     \column {
      \line { \bold "1."
         \column{
          "Sárkányos pajzzsal nyertem csatát."
          "Kőrisek szélben és két szűz leány."
          "Minden ellenség megadta magát." 
          "Szélforgó világ egy örök talány."
         }
      }
     \combine \null \vspace #0.1 % adds vertical spacing between verses
      \line { \bold "2."
        \column {       
            "Menetelt sok száz fa hegyek ormány."
            "Kőrisek szélben és két szűz leány."
            "Árkokban patak nőtt a fák nyomán."
            "Szélforgó világ egy örök talány."
        }
      }
      \combine \null \vspace #0.1 % adds vertical spacing between verses
      \line { \bold "3."
        \column {               
          "Vállvetve küzdöttünk harc mezején."
          "Kőrisek szélben és két szűz leány."
          "Fák és emberek s az élükön én."
          "Szélforgó világ egy örök talány."
        }
      }
      \combine \null \vspace #0.1 % adds vertical spacing between verses
      \line { \bold "4."
          \column {                        
            "Sárkányos pajzzsal nyertem csatát."
            "Kőrisek szélben és két szűz leány."
            "Minden ellenség megadta magát."
            "Szélforgó világ egy örök talány."
          }
      }
    }
  }
}


