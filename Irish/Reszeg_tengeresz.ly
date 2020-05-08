#(set-default-paper-size "a4" 'portrait)
%#(set-global-staff-size 24)

\version "2.18"
\header {
  title = "Baj van a részeg tengerésszel"
  arranger = "Angol népdal"
  enteredby = "grerika @ github"
  tagline = "Last update: 05/07/2020 (Gobliners)"
}

global = {
  \key g \major
  \time 4/4
%  \tempo 4 = 125
}

flute = \relative c'' {
  \global
      b4 b8 b b4 b4  | b4 e, g b | 
      a4 a8 a a4 a4  | a4 d, fis a | 
      \break
      b4 b8 b8 b4 b4 | b4 cis d e | 
      d b a fis | e2 e2 
      \break
      b'2  b4 b4  | b4 e, g b | 
      a2  a4 a4  | a4 d, fis a |
      \break
      b2  b4 b4 | b4 cis d e | 
      d b a fis | e2 e2 
  
    \bar "|."
    
}


harmonies = \chordmode {
        e1 e d d  e e g2 d e1
        e1 e d d  e e g2 d e
}

verseHungarian = \lyricmode {
    Baj van a ré -- szeg ten -- ge -- rész -- szel
    Baj van a ré -- szeg ten -- ge -- rész -- szel
    Baj van a ré -- szeg ten -- ge -- rész -- szel
    min -- den ál -- dott reg -- gel.
    %
    Haj, hé de húzz rá e -- egyet
    Haj, hé de húzz rá e -- egyet
    Haj, hé de húzz rá e -- egyet
    min -- den ál -- dott reg -- gel.
}

\score {
    <<      
    \new ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \new Voice { \flute }
    \addlyrics \verseHungarian
    >>
  
  \layout { }
  \midi { }
}



\markup \small {
  \fill-line {
      \combine \null \vspace #2 % adds vertical spacing between verses
     % can be removed if space on the page is tight
     \column {
      \line { \bold "1."
        \column {
          "Baj van a részeg tengerésszel (3x)"
        }
      }
      %\combine \null \vspace #0.1 % adds vertical spacing between verses
      \line { \bold "2."
        \column {
          "Lökd a fenékre a víztömlővel (3x)"
        }
      }
     %\combine \null \vspace #0.1 % adds vertical spacing between verses
       \line { \bold "3."
        \column {       
            "Dob' bele, itt van a mentőcsónak (3x)"
        }
      }
      %\combine \null \vspace #0.1 % adds vertical spacing between verses
      \line { \bold "4."
        \column {               
            "Lógjon a lába az orrkötélen (3x)"
        }
      }
      %\combine \null \vspace #0.1 % adds vertical spacing between verses
      \line { \bold "5."
          \column { 
           "Kösd hamar oda csak a nagykorlátra (3x)"
          }
      }
     % \combine \null \vspace #0.1 % adds vertical spacing between verses
      \line { \bold "6."
          \column { 
           "Bele vele gyorsan a tengervízbe (3x)"
          }
      }
    }
  \hspace #0.1 % gives some extra space on the right margin;
  % can be removed if page space is tight
  }
}


