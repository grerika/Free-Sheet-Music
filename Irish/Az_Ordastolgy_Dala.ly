#(set-default-paper-size "a4" 'portrait)
%#(set-global-staff-size 24 )

\version "2.18"
\header {
  title = "Az Ordastölgy Dala"
  arranger = "Dallam és szöveg: Csanádi Viktor"
  composer = "Erdei Rezervátum"
  enteredby = "grerika @ github"
  tagline = "Last update: 05/09/2020 (Gobliners)"
}

global = {
  \key b \minor
  \time 4/4
  \tempo 4 = 80
}


voice = \relative c'' {
  \global
  \dynamicUp
    a4 e' d8. b16 a8. g16 | a4 e'4 d8. e16 g8. e16 |  
    a,4 e' g fis | e8 d c d c b a g |
    % 
    \break
    a4 e' d8. b16 a8. g16 | a4 e'4 d8. e16 g8. a16 |  
    a,4 e' g fis | d8 b g b a2 
    %
    \break
    a'4 a g8. fis16 e8. d16 | g4 g8 a e d b g | 
    a'4 a g8 fis8 e8 d8     | g4 a8 b g b a g |
    % 
    \break
    a4 a g8. fis16 e8. d16 | g8 fis g a e d b g | 
     a4 e' d8 b g4           | e2 a2 
  \bar ":|."   
}

harmonies = \chordmode {
    a2:m e:m | a:m d | a:m g | e:m g
    a:m e:m  | a:m d | a:m g | e:m a:m
    a:m e:m  | g e:m | a:m g | e:m g
    a:m e:m  | g e:m | a:m g | e:m a:m
 
}

verse = \lyricmode {
  % Lyrics follow here.
  Tölgy -- fák haj -- na -- lá -- ban, vol -- tál haj -- da -- ná -- ban
  völgy -- ben szí -- ved vá -- gya -- ko -- zott szün -- te -- len csak
  or -- das gú -- nyád bán -- ja lel -- ked leg -- hőbb vá -- gya
  völgy -- ben szí -- ved csak egy na -- pot vár
  % fütty
  kér -- ted nem kap -- tad meg, vár -- tad nem tör -- tént meg _
  völgy -- ben szí -- ved vá -- gya -- ko -- zott szün -- te -- len csak _
  Töl -- gyek U -- ra állt ott, dön -- tött_s be -- léd lá -- tott
  völgy -- ben szí -- ved vég -- re sza -- bad már
  
}


\score {
  <<
      \new ChordNames {
        \set noChordSymbol = "" 
        \set chordChanges = ##t
        \harmonies
      }
    \voice 
    %\addlyrics { \set stanza = #"1. " \verse }
  >>
  
  \layout { }
  \midi {}
}




\markup \small {
  \fill-line {
      \combine \null \vspace #2 % adds vertical spacing between verses
     % can be removed if space on the page is tight
     \column {
      \line { \bold "1."
        \column {
          "Tölgyfák hajnalában, voltál hajdanában"
          "völgyben szíved vágyakozott szüntelen csak"
          "ordas gúnyád bánja lelked leghőbb vágya"
          "völgyben szíved csak egy napot vár"
        }
      }
      \combine \null \vspace #0.4 % adds vertical spacing between verses
      \line { \bold "    "
              \column {
                "fütty"
              }
      }
     \combine \null \vspace #0.1 % adds vertical spacing between verses
       \line { \bold "2."
        \column {       
            "Kérted nem kaptad meg, vártad nem történt meg"
            "völgyben szíved vágyakozott szüntelen csak"
            "Tölgyek Ura állt ott, döntött s beléd látott"
            "völgyben szíved végre szabad má"
        }
      }
      \combine \null \vspace #0.4 % adds vertical spacing between verses
      \line { \bold  "   "
              \column { "nana"  }
      }
      \combine \null \vspace #0.1 % adds vertical spacing between verses
      \line { \bold "3."
          \column { 
           "Szélben hajladozol, nappal álmodozol"
           "szíved boldog szikrázóan élve dobog"
           "farkas lelke benned ágak körülötted"
           "de a völgyből néha vonyítás jő még"
          }
      }
    }
  \hspace #0.1 % gives some extra space on the right margin;
  % can be removed if page space is tight
  }
}


