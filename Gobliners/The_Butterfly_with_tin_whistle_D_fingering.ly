#(set-default-paper-size "a4" 'landscape)
#(set-global-staff-size 16.5)
#(print-keys-verbose 'tin-whistle (current-error-port))

% tin-whistle fingering chart is not available "by default in LilyPond
%      Necessary patch: available here: http://lilypond.1069038.n5.nabble.com/Custom-woodwind-diagram-td207588.html
% 	+ Hint: search for ".patch"
%	+Note: it did not work for me in LilyPond 2.18
\version "2.18"
\header {
  title = "The Butterfly"
  subtitle = "Slip Jig"
  subsubtitle = "with Tin Whistle D fingering chart"
  composer = "Traditional Irish"
  arranger = "Arrangement: Dominig Bauchaud"
  enteredby = "grerika @ github"
  tagline = "Last update: 05/26/2020 (Gobliners)"
}

global = {
  \key g \major
  \time 9/8
  \tempo 4. = 116
}

melody = \relative c'' {
  \global
    | 
      b4 ^\markup {Theme A}^\markup {\woodwind-diagram #'tin-whistle  #'((cc . (one))  (lh . ())   (rh . ())) }
      e,8^\markup {\woodwind-diagram #'tin-whistle  #'((cc . (one two three four five))  (lh . ())   (rh . ())) }
      g4^\markup {\woodwind-diagram #'tin-whistle  #'((cc . (one two three))  (lh . ())   (rh . ())) }   
      e8^\markup {\woodwind-diagram #'tin-whistle  #'((cc . (one two three four five))  (lh . ())   (rh . ())) }
      fis4.^\markup {\woodwind-diagram #'tin-whistle  #'((cc . (one two three four))  (lh . ())   (rh . ())) }        
    | 
      b4^\markup {\woodwind-diagram #'tin-whistle  #'((cc . (one))  (lh . ())   (rh . ())) }  
      e,8^\markup {\woodwind-diagram #'tin-whistle  #'((cc . (one two three four five))  (lh . ())   (rh . ())) }   
      g4^\markup {\woodwind-diagram #'tin-whistle  #'((cc . (one two three))  (lh . ())   (rh . ())) }     
      e8 ^\markup {\woodwind-diagram #'tin-whistle  #'((cc . (one two three four five))  (lh . ())   (rh . ())) }    
      fis^\markup {\woodwind-diagram #'tin-whistle  #'((cc . (one two three four))  (lh . ())   (rh . ())) }          
      e8 ^\markup {\woodwind-diagram #'tin-whistle  #'((cc . (one two three four five))  (lh . ())   (rh . ())) }     
      d^\markup {\woodwind-diagram #'tin-whistle  #'((cc . (one two three four five six))  (lh . ())   (rh . ())) }     
    | 
      b'4^\markup {\woodwind-diagram #'tin-whistle  #'((cc . (one))  (lh . ())   (rh . ())) }
      e,8^\markup {\woodwind-diagram #'tin-whistle  #'((cc . (one two three four five))  (lh . ())   (rh . ())) }
      g4^\markup {\woodwind-diagram #'tin-whistle  #'((cc . (one two three))  (lh . ())   (rh . ())) }    
      e8^\markup {\woodwind-diagram #'tin-whistle  #'((cc . (one two three four five))  (lh . ())   (rh . ())) }     
      fis4.^\markup {\woodwind-diagram #'tin-whistle  #'((cc . (one two three four))  (lh . ())   (rh . ())) }           
    |
      b4^\markup {\woodwind-diagram #'tin-whistle  #'((cc . (one))  (lh . ())   (rh . ())) }
      d8^\markup{\center-align{+}}^\markup {\center-align{\woodwind-diagram #'tin-whistle  #'((cc . (two three four five six))  (lh . ())   (rh . ())) }}
      d4^\markup{\center-align{+}}^\markup {\center-align{\woodwind-diagram #'tin-whistle  #'((cc . (two three four five six))  (lh . ())   (rh . ())) }}
      b8^\markup {\woodwind-diagram #'tin-whistle  #'((cc . (one))  (lh . ())   (rh . ())) }
      a8^\markup {\woodwind-diagram #'tin-whistle  #'((cc . (one two))  (lh . ())   (rh . ())) }         
      fis^\markup {\woodwind-diagram #'tin-whistle  #'((cc . (one two three four))  (lh . ())   (rh . ())) }
      d^\markup {\woodwind-diagram #'tin-whistle  #'((cc . (one two three four five six))  (lh . ())   (rh . ())) }     
   \bar ":|.|:" \break
    | 
        b'4^\markup{Theme B}^\markup {\woodwind-diagram #'tin-whistle  #'((cc . (one))  (lh . ())   (rh . ())) }
        c8^\markup {\woodwind-diagram #'tin-whistle  #'((cc . (two three))  (lh . ())   (rh . ())) }
        e4^\markup{\center-align{+}}^\markup {\center-align{\woodwind-diagram #'tin-whistle  #'((cc . (one two three four five))  (lh . ())   (rh . ())) } }
        fis8^\markup{\center-align{+}}^\markup {\center-align{\woodwind-diagram #'tin-whistle  #'((cc . (one two three four))  (lh . ())   (rh . ())) }}
        g4.^\markup{\center-align{+}}^\markup {\center-align{\woodwind-diagram #'tin-whistle  #'((cc . (one two three))  (lh . ())   (rh . ())) } }
    |         
        b,4^\markup {Theme A}^\markup {\woodwind-diagram #'tin-whistle  #'((cc . (one))  (lh . ())   (rh . ())) }
        c8^\markup {\woodwind-diagram #'tin-whistle  #'((cc . (two three))  (lh . ())   (rh . ())) }
        g'4^\markup{\center-align{+}}^\markup {\center-align{\woodwind-diagram #'tin-whistle  #'((cc . (one two three))  (lh . ())   (rh . ())) }  }
        e8^\markup{\center-align{+}}^\markup {\center-align{\woodwind-diagram #'tin-whistle  #'((cc . (one two three four five))  (lh . ())   (rh . ())) }}
        d8^\markup{\center-align{+}}^\markup {\center-align{\woodwind-diagram #'tin-whistle  #'((cc . ( two three four five six))  (lh . ())   (rh . ())) }     }
        b8^\markup {\woodwind-diagram #'tin-whistle  #'((cc . (one))  (lh . ())   (rh . ())) }
        a8^\markup {\woodwind-diagram #'tin-whistle  #'((cc . (one two))  (lh . ())   (rh . ())) }     
    | 
        b4^\markup {\woodwind-diagram #'tin-whistle  #'((cc . (one))  (lh . ())   (rh . ())) } 
        c8^\markup {\woodwind-diagram #'tin-whistle  #'((cc . (two three))  (lh . ())   (rh . ())) }
        e4^\markup{\center-align{+}}^\markup {\center-align{\woodwind-diagram #'tin-whistle  #'((cc . (one two three four five))  (lh . ())   (rh . ())) }}
        fis8^\markup{\center-align{+}}^\markup {\center-align{\woodwind-diagram #'tin-whistle  #'((cc . (one two three four))  (lh . ())   (rh . ())) }}
        g4^\markup{\center-align{+}}^\markup {\center-align{\woodwind-diagram #'tin-whistle  #'((cc . (one two three))  (lh . ())   (rh . ())) } }
        a8^\markup{\center-align{+}}^\markup {\center-align{\woodwind-diagram #'tin-whistle  #'((cc . (one two))  (lh . ())   (rh . ())) } }
    |           
        b4^\markup{\center-align{+}}^\markup {\center-align{\woodwind-diagram #'tin-whistle  #'((cc . (one))  (lh . ())   (rh . ())) }}
        a8^\markup{\center-align{+}}^\markup {\center-align{\woodwind-diagram #'tin-whistle  #'((cc . (one two))  (lh . ())   (rh . ())) }  }
        g4^\markup{\center-align{+}}^\markup {\center-align{\woodwind-diagram #'tin-whistle  #'((cc . (one two three))  (lh . ())   (rh . ())) }   }
        e8^\markup{\center-align{+}}^\markup {\center-align{\woodwind-diagram #'tin-whistle  #'((cc . (one two three four five))  (lh . ())   (rh . ())) }}
        d8^\markup{\center-align{+}}^\markup {\center-align{\woodwind-diagram #'tin-whistle  #'((cc . ( two three four five six))  (lh . ())   (rh . ())) } }
        b8^\markup{\woodwind-diagram #'tin-whistle  #'((cc . (one))  (lh . ())   (rh . ())) } 
        a8^\markup {\woodwind-diagram #'tin-whistle  #'((cc . (one two))  (lh . ())   (rh . ())) }       
   \bar ":|.|:"  \break
    | 
        b4.^\markup{Theme C}^\markup {\woodwind-diagram #'tin-whistle  #'((cc . (one))  (lh . ())   (rh . ())) }
        b4^\markup {\woodwind-diagram #'tin-whistle  #'((cc . (one))  (lh . ())   (rh . ())) }
        a8^\markup {\woodwind-diagram #'tin-whistle  #'((cc . (one two))  (lh . ())   (rh . ())) }       
        g4^\markup {\woodwind-diagram #'tin-whistle  #'((cc . (one two three))  (lh . ())   (rh . ())) }   
        a8^\markup {\woodwind-diagram #'tin-whistle  #'((cc . (one two))  (lh . ())   (rh . ())) }     
    |
        b4.^\markup {\woodwind-diagram #'tin-whistle  #'((cc . (one))  (lh . ())   (rh . ())) }
        b8^\markup {\woodwind-diagram #'tin-whistle  #'((cc . (one))  (lh . ())   (rh . ())) }
        a8^\markup {\woodwind-diagram #'tin-whistle  #'((cc . (one two))  (lh . ())   (rh . ())) }        
        b8^\markup {\woodwind-diagram #'tin-whistle  #'((cc . (one))  (lh . ())   (rh . ())) }
        d8^\markup{\center-align{+}}^\markup {\center-align{\woodwind-diagram #'tin-whistle  #'((cc . ( two three four five six))  (lh . ())   (rh . ())) } }
        b8^\markup {\woodwind-diagram #'tin-whistle  #'((cc . (one))  (lh . ())   (rh . ())) } 
        a8^\markup {\woodwind-diagram #'tin-whistle  #'((cc . (one two))  (lh . ())   (rh . ())) }       
    | 
        b4.^\markup {\woodwind-diagram #'tin-whistle  #'((cc . (one))  (lh . ())   (rh . ())) }
        b4^\markup {\woodwind-diagram #'tin-whistle  #'((cc . (one))  (lh . ())   (rh . ())) }
        a8^\markup {\woodwind-diagram #'tin-whistle  #'((cc . (one two))  (lh . ())   (rh . ())) }        
        g4^\markup {\woodwind-diagram #'tin-whistle  #'((cc . (one two three))  (lh . ())   (rh . ())) }   
        a8^\markup {\woodwind-diagram #'tin-whistle  #'((cc . (one two))  (lh . ())   (rh . ())) }        
    |
        b4^\markup {\woodwind-diagram #'tin-whistle  #'((cc . (one))  (lh . ())   (rh . ())) }
        d8^\markup{\center-align{+}}^\markup {\center-align{\woodwind-diagram #'tin-whistle  #'((cc . ( two three four five six))  (lh . ())   (rh . ())) }  }
        g4^\markup{\center-align{+}}^\markup {\center-align{\woodwind-diagram #'tin-whistle  #'((cc . (one two three))  (lh . ())   (rh . ())) }   }
        e8^\markup{\center-align{+}}^\markup {\center-align{\woodwind-diagram #'tin-whistle  #'((cc . (one two three four five))  (lh . ())   (rh . ())) }}
        d8^\markup{\center-align{+}}^\markup {\center-align{\woodwind-diagram #'tin-whistle  #'((cc . ( two three four five six))  (lh . ())   (rh . ())) }}     
        b8^\markup {\woodwind-diagram #'tin-whistle  #'((cc . (one))  (lh . ())   (rh . ())) }
        a8^\markup {\woodwind-diagram #'tin-whistle  #'((cc . (one two))  (lh . ())   (rh . ())) }     
  \bar ":|."
}


harp =  \relative c {
  \clef bass
  \global
   | <<e2. e,>> r4.
   | <<d2. d'>> r4.
   | <<e2. e,>> r4.
   | <<c2. c'>> r4.
  \bar ":|.|:"
    | <<a4 a' >> <<a8 e' ~>> <<e4. a,>> r
    | <<g2. g,2>> r4.
    | <<a4 a' e>> <<a8 e' ~>> <<e4 a,>> <<c8 g' ~>> <<g4. c,>>
    | r4.^\markup{this part was missing from the original score :)} r4. r4.
\bar ":|.|:"
    | g8 d'4 ~ d4. r4.
    | fis,8 d'4 ~ d4. r4.
    | <<e,2. d'2.>> r4.
    | <<e2. c,2.>> r4.
\bar ":|."
}

\score {
    << 
      \new Staff \melody
      \new Staff \harp 
    >>
    \midi{   }
}
