#(set-default-paper-size "a4" 'portrait)
#(set-global-staff-size 28)

\version "2.18"
\header {
  title = "Scarborough Fair"
  arranger = "Hungarian lyrics: Viktor Csanádi"
  enteredby = "grerika @ github"
  tagline = "Last update: 05/09/2020"% (Gobliners)"
}

global = {
  \key c \major
  \time 3/4
%  \tempo 4 = 125
}

tune = \relative c' {
  \global
      d2 d4 | a'2 a4 | e f e d2. (d4) \breathe \break a' c |
      d2 c4 | a b g | a2. (a2) \breathe \break d4 |
      d2 d4 c2 a4 | a4 g f | e c2 (c2.) \breathe \break |
      d2 a'4 g2 f4 | e d c | d2. (d)
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
    \tune 
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


