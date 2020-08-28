#(set-default-paper-size "a4" 'portrait)
%#(set-global-staff-size 26)

\version "2.18"
\header {
  title = "The Irish Rover"
  %subtitle = "march"
  composer = "Traditional Irish"
  arranger = "Hungarian lyrics: Csanádi Viktor"
  enteredby = "grerika @ github"
  tagline = "Last update: 08/28/2020 (Gobliners)"  
}

global = {
  \key g \major
  \time 4/4
}

voice = \relative c'' {
  \global
  \dynamicUp
  \partial 4  b8 a | 
  g4 b8 c d4 g8 a |
  b4 a8 fis g4 fis8 e | d4 e8 d b4 c8 b |
  a4 a8 b a4^\markup{\small \italic fine} \bar "||" d8 b |
  g4 b8 c d4 g8 a | b4 a8 fis g4 fis8 e d4 fis8 g a4 fis8 d | g4 g g 
  \bar "||"
  \break
  d8 d | g4 g8 a8 b4 g8 b8 | a4 a8 fis8 d4 e8 fis8 |
  g4 g8 a8 b4 g8 b8 | a4 fis8 e8 d4 \bar "||"
  \break
  b8 a8 
  g4 b8 c8 d4 g8 a8 | b4 a8 fis8 g4 fis8 e8 | 
  d4 fis8 g8 a4 fis8 d8 | g4 g8. g16 g4^\markup{\small \italic {D.C. al fine} }
  \bar "|."
}



verse = \lyricmode {
  In the year of our Lord, eigh -- teen hund -- red and six
  We set sail from the fair Cobh of Cork
  _ _ _
  We were sail -- ing a -- way with a car -- go of bricks
  For the fine ci -- ty hall of New York _ _
  
  'twas a won -- der -- ful craft, she was rigged for  and aft _ and
  oh, how the wild winds _ drove  _ _ her
  She'd got se -- ve -- ral blasts she'd twen -- ty -- se -- ven masts 
  And we called her the I -- ri -- sh Ro -- ver 
}

harmonies = \chordmode {
  r4
  g2 g c c g g d d 
  g g c c  g d c c
  g g d d g g d d 
  g g e:m e:m g d g g
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
    \hspace #0.2 % moves the column off the left margin;
     % can be removed if space on the page is tight
     \column {
      \line { \bold "1."
        \column {
          "Július negyedik napja, ezernyolcszázhat,"
          "Kihajóztunk Cork hideg öbléből"
          "A raktérben egy nagy halom tégla is akadt"
          "Amiből majd a new-yorki ház épül"
          "Csodás hajó volt, tele mindenféle jóval,"
          "     összetákolt tattal és oorral"
          "A szél repítette és ő volt Irish Roveer,"
          "     rozogább lett minden egyes nappal"
        }
      }
      \combine \null \vspace #1.1 % adds vertical spacing between verses
      \line { \bold "2."
        \column {
          "Vittünk egymillió zsákkal Sligo rongyból mákkal,"
          "És kétmillió hordót teli kővel,"
          "Hárommillió véget, vak lóbőrt mi béget"
          "És négymillió hordó csontot csőrrel"
          "Ötmillió kutyát, de malacból is dukált"
          "Hétmillió hordót teli söörrel"
          "Még nyolcmillió tarka kecskemama farka"
          "Ez mind az öreg hajóra volt rakva"
        }
      }
    }
    \hspace #0.2 % adds horizontal spacing between columns;
    \column {
      \line { \bold "3."
        \column {       
          "Micky volt legényem, ki fuvolált keményen,"
          "A hölgyek mind elolvadtak tőle"
          "Bár nem volt túlzón magas,"
          "        mégis úgy sétált mint kakas"
          "Minden lánynak borzongott a bőre"
          "A beszéde ékes, és a tánca sem oly rémes"
          "Bárkit meghódított, ki a fedélközbe nyitott"
          "Így hajóztunk páran, nevetve, vidáman"
          "És az Irish Rover repített el minket"
        }
      }
      \combine \null \vspace #0.1 % adds vertical spacing between verses
      \line { \bold "4."
        \column {               
            "Már hét éve hajóztunk, mikor (a) kanyaró is kitört"
            "És eltűntünk a ködök tengerén"
            "Szép lassan elfogytunk, s csak ketten maradtunk"
            "A kapitány úr kutyája meg én"
            "Hajónk sziklának ment, ott hol senki meg nem ment"
            "A kutya is beesett a víízbe"
            "De sok lóherét evett, így szerencsésen esett,"
            "     megúszta és békésen a partra evezett"
        }
      }
       \combine \null \vspace #0.1 % adds vertical spacing between verses
      \line {
          \column {  \bold "Vége."
            "Így én vagyok a Rover utolsó legénye"
            "És ezzel a mesének is itt a boldog vége"
          }
      }
    }
  \hspace #0.1 % gives some extra space on the right margin;
  % can be removed if page space is tight
  }
}



