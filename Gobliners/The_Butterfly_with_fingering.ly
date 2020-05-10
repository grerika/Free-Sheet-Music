#(set-default-paper-size "a4" 'landscape)
#(set-global-staff-size 16.5)


% recorder fingering chart is not available "by default in LilyPond
%      Necessary patch: available here: http://lilypond.1069038.n5.nabble.com/Custom-woodwind-diagram-td207588.html
% 	+ Hint: search for ".patch"
%	+Note: it did not work for me in LilyPond 2.18
\version "2.19"
\header {
  title = "The Butterfly"
  subtitle = "Slip Jig"
  subsubtitle = "with baroque (English) fingering chart for soprano recorder"
%  subsubtitle = "with modern (German) fingering chart for soprano recorder"
  composer = "Traditional Irish"
  arranger = "Arrangement: Dominig Bauchaud"
  enteredby = "grerika @ github"
  lastupdated = "12/23/2019"
  tagline = "Gobliners"
}

global = {
  \key g \major
  \time 9/8
  \tempo 4. = 116
}

recorder_baroque_english = \relative c'' {
  \global
    | 
      b4^\markup\woodwind-diagram      #'recorder #'((cc . (one))  (lh . (thumb))   (rh . ()))
      e,8^\markup\woodwind-diagram     #'recorder #'((cc . (one two three four five)) (lh . (thumb)) (rh . ())) 
      g4^\markup\woodwind-diagram      #'recorder #'((cc . (one two three))  (lh  . (thumb))  (rh . ())) 
      e8^\markup\woodwind-diagram      #'recorder #'((cc . (one two three four five))  (lh  . (thumb))  (rh . ()))  
      fis4.^\markup\woodwind-diagram   #'recorder #'((cc . (one two three five six))  (lh  . (thumb))  (rh . ()))    
    | 
      b4^\markup\woodwind-diagram   #'recorder #'((cc . (one))  (lh . (thumb))   (rh . ())) 
      e,8^\markup\woodwind-diagram  #'recorder #'((cc . (one two three four five))  (lh  . (thumb))  (rh . ())) 
      g4^\markup\woodwind-diagram   #'recorder #'((cc . (one two three))  (lh  . (thumb)) (rh . ()))
      e8^\markup\woodwind-diagram   #'recorder #'((cc . (one two three four five))  (lh  . (thumb))  (rh . ()))  
      fis^\markup\woodwind-diagram  #'recorder #'((cc . (one two three five six))  (lh  . (thumb))  (rh . ()))    
      e^\markup\woodwind-diagram    #'recorder #'((cc . (one two three four five))  (lh  . (thumb))  (rh . ())) 
      d^\markup\woodwind-diagram    #'recorder #'((cc . (one two three four five six))  (lh  . (thumb))  (rh . ())) 
    | 
      b'4^\markup \woodwind-diagram #'recorder #'((cc . (one))  (lh . (thumb))   (rh . ())) 
      e,8^\markup\woodwind-diagram  #'recorder #'((cc . (one two three four five))  (lh . (thumb)) (rh . ()))  
      g4^\markup\woodwind-diagram   #'recorder #'((cc . (one two three))  (lh  . (thumb))  (rh . ()))  
      e8^\markup\woodwind-diagram   #'recorder #'((cc . (one two three four five))  (lh  . (thumb))  (rh . ()))  
      fis4.^\markup\woodwind-diagram   #'recorder #'((cc . (one two three five six))  (lh  . (thumb)) (rh . ()))    
    |
      b4^\markup\woodwind-diagram   #'recorder #'((cc . (one))  (lh  . (thumb)) (rh . ()))
      d8^\markup\woodwind-diagram   #'recorder #'((cc . (two))  (lh  . ()) (rh . ()))
      d4^\markup\woodwind-diagram   #'recorder #'((cc . (two))  (lh  . ()) (rh . ()))
      b8^\markup \woodwind-diagram #'recorder #'((cc . (one))  (lh . (thumb)) (rh . ()))
      a^\markup\woodwind-diagram   #'recorder #'((cc . (one two))  (lh  . (thumb)) (rh . ()))  
      fis^\markup\woodwind-diagram   #'recorder #'((cc . (one two three five six))  (lh  . (thumb)) (rh . ()))  
      d^\markup\woodwind-diagram   #'recorder #'((cc . (one two three four five six))  (lh  . (thumb))  (rh . ())) 
   \bar ":|.|:" \break
    | 
        b'4^\markup \woodwind-diagram #'recorder #'((cc . (one))  (lh . (thumb))   (rh . ())) 
        c8^\markup \woodwind-diagram #'recorder #'((cc . (two))  (lh . (thumb))   (rh . ()))
        e4^\markup \woodwind-diagram   #'recorder #'((cc . (one two three four five)) (lh . (thumb1h)) (rh . ())) 
        fis8^\markup\woodwind-diagram   #'recorder #'((cc . (one two three five))  (lh  . (thumb1h)) (rh . ()))  
        g4.^\markup\woodwind-diagram   #'recorder #'((cc . (one two three))  (lh  . (thumb1h)) (rh . ()))
    |         
        b,4^\markup \woodwind-diagram #'recorder #'((cc . (one))  (lh . (thumb))   (rh . ()))
        c8^\markup \woodwind-diagram #'recorder #'((cc . (two))  (lh . (thumb))   (rh . ()))
        g'4^\markup\woodwind-diagram   #'recorder #'((cc . (one two three))  (lh  . (thumb1h)) (rh . ()))
        e8^\markup \woodwind-diagram #'recorder #'((cc . (one two three four five)) (lh . (thumb1h)) (rh . ())) 
        d^\markup\woodwind-diagram   #'recorder #'((cc . (two))  (lh  . ()) (rh . ()))
        b^\markup \woodwind-diagram #'recorder #'((cc . (one))  (lh . (thumb))   (rh . ())) 
        a^\markup\woodwind-diagram   #'recorder #'((cc . (one two))  (lh  . (thumb)) (rh . ()))  
    | 
        b4^\markup\woodwind-diagram #'recorder  #'((cc . (one)) (lh . (thumb)) (rh . ())) 
        c8^\markup \woodwind-diagram #'recorder #'((cc . (two))  (lh . (thumb))   (rh . ()))
        e4^\markup \woodwind-diagram #'recorder #'((cc . (one two three four five)) (lh . (thumb1h)) (rh . ())) 
        fis8^\markup\woodwind-diagram   #'recorder #'((cc . (one two three five))  (lh  . (thumb1h)) (rh . ()))  
        g4^\markup\woodwind-diagram   #'recorder #'((cc . (one two three))  (lh  . (thumb1h)) (rh . ()))
        a8^\markup\woodwind-diagram   #'recorder #'((cc . (one two))  (lh  . (thumb1h)) (rh . ()))  
    |           
        b4^\markup \woodwind-diagram  #'recorder #'((cc . (one two four five))  (lh . (thumb1h))   (rh . ()))
        a8^\markup\woodwind-diagram   #'recorder #'((cc . (one two))  (lh  . (thumb1h)) (rh . ()))  
        g4^\markup\woodwind-diagram   #'recorder #'((cc . (one two three))  (lh  . (thumb1h)) (rh . ()))
        e8^\markup \woodwind-diagram  #'recorder #'((cc . (one two three four five)) (lh . (thumb1h)) (rh . ())) 
        d^\markup\woodwind-diagram    #'recorder #'((cc . (two))  (lh  . ()) (rh . ()))
        b^\markup \woodwind-diagram   #'recorder #'((cc . (one))  (lh . (thumb))   (rh . ())) 
        a^\markup\woodwind-diagram    #'recorder #'((cc . (one two))  (lh  . (thumb)) (rh . ()))  
   \bar ":|.|:"  \break
    | 
        b4.^\markup \woodwind-diagram #'recorder #'((cc . (one))  (lh . (thumb))   (rh . ()))
        b4
        a8^\markup\woodwind-diagram   #'recorder #'((cc . (one two))  (lh  . (thumb)) (rh . ()))  
        g4^\markup\woodwind-diagram   #'recorder #'((cc . (one two three))  (lh  . (thumb)) (rh . ()))
        a8^\markup\woodwind-diagram   #'recorder #'((cc . (one two))  (lh  . (thumb)) (rh . ()))  
    |
        b4.^\markup \woodwind-diagram #'recorder #'((cc . (one))  (lh . (thumb))   (rh . ()))
        b8^\markup\woodwind-diagram   #'recorder #'((cc . (one))  (lh  . (thumb))  (rh . ()))
        a^\markup\woodwind-diagram    #'recorder #'((cc . (one two))  (lh  . (thumb)) (rh . ()))  
        b^\markup \woodwind-diagram   #'recorder #'((cc . (one))  (lh . (thumb))   (rh . ()))
        d^\markup\woodwind-diagram    #'recorder #'((cc . (two))  (lh  . ()) (rh . ()))
        b^\markup \woodwind-diagram   #'recorder #'((cc . (one))  (lh . (thumb))   (rh . ())) 
        a^\markup\woodwind-diagram    #'recorder #'((cc . (one two))  (lh  . (thumb)) (rh . ()))  
    | 
        b4.^\markup \woodwind-diagram #'recorder #'((cc . (one))  (lh . (thumb))   (rh . ()))
        b4
        a8^\markup\woodwind-diagram   #'recorder #'((cc . (one two))  (lh  . (thumb)) (rh . ()))  
        g4^\markup\woodwind-diagram   #'recorder #'((cc . (one two three))  (lh  . (thumb)) (rh . ())) 
        a8^\markup\woodwind-diagram   #'recorder #'((cc . (one two))  (lh  . (thumb)) (rh . ()))  
    |
        b4^\markup \woodwind-diagram #'recorder #'((cc . (one))  (lh . (thumb))   (rh . ()))
        d8^\markup\woodwind-diagram   #'recorder #'((cc . (two))  (lh  . ()) (rh . ()))
        g4^\markup\woodwind-diagram   #'recorder #'((cc . (one two three))  (lh  . (thumb1h)) (rh . ()))
        e8^\markup\woodwind-diagram  #'recorder #'((cc . (one two three four five))  (lh . (thumb1h)) (rh . ()))  
        d^\markup\woodwind-diagram   #'recorder #'((cc . (two))  (lh  . ()) (rh . ()))
        b^\markup \woodwind-diagram #'recorder #'((cc . (one))  (lh . (thumb))   (rh . ()))
        a^\markup\woodwind-diagram   #'recorder #'((cc . (one two))  (lh  . (thumb)) (rh . ()))  
  \bar ":|."
}


recorder_modern_german = \relative c'' {
  \global
    | 
      b4^\markup\woodwind-diagram      #'recorder #'((cc . (one))  (lh . (thumb))   (rh . ()))
      e,8^\markup\woodwind-diagram     #'recorder #'((cc . (one two three four five)) (lh . (thumb)) (rh . ())) 
      g4^\markup\woodwind-diagram      #'recorder #'((cc . (one two three))  (lh  . (thumb))  (rh . ())) 
      e8^\markup\woodwind-diagram      #'recorder #'((cc . (one two three four five))  (lh  . (thumb))  (rh . ()))  
      fis4.^\markup\woodwind-diagram   #'recorder #'((cc . (one two three five six seven))  (lh  . (thumb))  (rh . ()))    
    | 
      b4^\markup\woodwind-diagram   #'recorder #'((cc . (one))  (lh . (thumb))   (rh . ())) 
      e,8^\markup\woodwind-diagram  #'recorder #'((cc . (one two three four five))  (lh  . (thumb))  (rh . ())) 
      g4^\markup\woodwind-diagram   #'recorder #'((cc . (one two three))  (lh  . (thumb)) (rh . ()))
      e8^\markup\woodwind-diagram   #'recorder #'((cc . (one two three four five))  (lh  . (thumb))  (rh . ()))  
      fis^\markup\woodwind-diagram  #'recorder #'((cc . (one two three five six seven))  (lh  . (thumb))  (rh . ()))    
      e^\markup\woodwind-diagram    #'recorder #'((cc . (one two three four five))  (lh  . (thumb))  (rh . ())) 
      d^\markup\woodwind-diagram    #'recorder #'((cc . (one two three four five six))  (lh  . (thumb))  (rh . ())) 
    | 
      b'4^\markup \woodwind-diagram #'recorder #'((cc . (one))  (lh . (thumb))   (rh . ())) 
      e,8^\markup\woodwind-diagram  #'recorder #'((cc . (one two three four five))  (lh . (thumb)) (rh . ()))  
      g4^\markup\woodwind-diagram   #'recorder #'((cc . (one two three))  (lh  . (thumb))  (rh . ()))  
      e8^\markup\woodwind-diagram   #'recorder #'((cc . (one two three four five))  (lh  . (thumb))  (rh . ()))  
      fis4.^\markup\woodwind-diagram   #'recorder #'((cc . (one two three five six seven))  (lh  . (thumb)) (rh . ()))    
    |
      b4^\markup\woodwind-diagram   #'recorder #'((cc . (one))  (lh  . (thumb)) (rh . ()))
      d8^\markup\woodwind-diagram   #'recorder #'((cc . (two))  (lh  . ()) (rh . ()))
      d4^\markup\woodwind-diagram   #'recorder #'((cc . (two))  (lh  . ()) (rh . ()))
      b8^\markup \woodwind-diagram #'recorder #'((cc . (one))  (lh . (thumb)) (rh . ()))
      a^\markup\woodwind-diagram   #'recorder #'((cc . (one two))  (lh  . (thumb)) (rh . ()))  
      fis^\markup\woodwind-diagram   #'recorder #'((cc . (one two three five six seven))  (lh  . (thumb)) (rh . ()))  
      d^\markup\woodwind-diagram   #'recorder #'((cc . (one two three four five six))  (lh  . (thumb))  (rh . ())) 
   \bar ":|.|:" \break
    | 
        b'4^\markup \woodwind-diagram #'recorder #'((cc . (one))  (lh . (thumb))   (rh . ())) 
        c8^\markup \woodwind-diagram #'recorder #'((cc . (two))  (lh . (thumb))   (rh . ()))
        e4^\markup \woodwind-diagram   #'recorder #'((cc . (one two three four five)) (lh . (thumb1h)) (rh . ())) 
        fis8^\markup\woodwind-diagram   #'recorder #'((cc . (one two three five seven))  (lh  . (thumb1h)) (rh . ()))  
        g4.^\markup\woodwind-diagram   #'recorder #'((cc . (one two three))  (lh  . (thumb1h)) (rh . ()))
    |         
        b,4^\markup \woodwind-diagram #'recorder #'((cc . (one))  (lh . (thumb))   (rh . ()))
        c8^\markup \woodwind-diagram #'recorder #'((cc . (two))  (lh . (thumb))   (rh . ()))
        g'4^\markup\woodwind-diagram   #'recorder #'((cc . (one two three))  (lh  . (thumb1h)) (rh . ()))
        e8^\markup \woodwind-diagram #'recorder #'((cc . (one two three four five)) (lh . (thumb1h)) (rh . ())) 
        d^\markup\woodwind-diagram   #'recorder #'((cc . (two))  (lh  . ()) (rh . ()))
        b^\markup \woodwind-diagram #'recorder #'((cc . (one))  (lh . (thumb))   (rh . ())) 
        a^\markup\woodwind-diagram   #'recorder #'((cc . (one two))  (lh  . (thumb)) (rh . ()))  
    | 
        b4^\markup\woodwind-diagram #'recorder  #'((cc . (one)) (lh . (thumb)) (rh . ())) 
        c8^\markup \woodwind-diagram #'recorder #'((cc . (two))  (lh . (thumb))   (rh . ()))
        e4^\markup \woodwind-diagram #'recorder #'((cc . (one two three four five seven)) (lh . (thumb1h)) (rh . ())) 
        fis8^\markup\woodwind-diagram   #'recorder #'((cc . (one two three five))  (lh  . (thumb1h)) (rh . ()))  
        g4^\markup\woodwind-diagram   #'recorder #'((cc . (one two three))  (lh  . (thumb1h)) (rh . ()))
        a8^\markup\woodwind-diagram   #'recorder #'((cc . (one two))  (lh  . (thumb1h)) (rh . ()))  
    |           
        b4^\markup \woodwind-diagram #'recorder #'((cc . (one two four five))  (lh . (thumb1h))   (rh . ()))
        a8^\markup\woodwind-diagram   #'recorder #'((cc . (one two))  (lh  . (thumb1h)) (rh . ()))  
        g4^\markup\woodwind-diagram   #'recorder #'((cc . (one two three))  (lh  . (thumb1h)) (rh . ()))
        e8^\markup \woodwind-diagram #'recorder #'((cc . (one two three four five)) (lh . (thumb1h)) (rh . ())) 
        d^\markup\woodwind-diagram   #'recorder #'((cc . (two))  (lh  . ()) (rh . ()))
        b^\markup \woodwind-diagram #'recorder #'((cc . (one))  (lh . (thumb))   (rh . ())) 
        a^\markup\woodwind-diagram   #'recorder #'((cc . (one two))  (lh  . (thumb)) (rh . ()))  
   \bar ":|.|:"  \break
    | 
        b4.^\markup \woodwind-diagram #'recorder #'((cc . (one))  (lh . (thumb))   (rh . ()))
        b4
        a8^\markup\woodwind-diagram   #'recorder #'((cc . (one two))  (lh  . (thumb)) (rh . ()))  
        g4^\markup\woodwind-diagram   #'recorder #'((cc . (one two three))  (lh  . (thumb)) (rh . ()))
        a8^\markup\woodwind-diagram   #'recorder #'((cc . (one two))  (lh  . (thumb)) (rh . ()))  
    |
        b4.^\markup \woodwind-diagram #'recorder #'((cc . (one))  (lh . (thumb))   (rh . ()))
        b8^\markup\woodwind-diagram   #'recorder #'((cc . (one))  (lh  . (thumb))  (rh . ()))
        a^\markup\woodwind-diagram    #'recorder #'((cc . (one two))  (lh  . (thumb)) (rh . ()))  
        b^\markup \woodwind-diagram   #'recorder #'((cc . (one))  (lh . (thumb))   (rh . ()))
        d^\markup\woodwind-diagram    #'recorder #'((cc . (two))  (lh  . ()) (rh . ()))
        b^\markup \woodwind-diagram   #'recorder #'((cc . (one))  (lh . (thumb))   (rh . ())) 
        a^\markup\woodwind-diagram    #'recorder #'((cc . (one two))  (lh  . (thumb)) (rh . ()))  
    | 
        b4.^\markup \woodwind-diagram #'recorder #'((cc . (one))  (lh . (thumb))   (rh . ()))
        b4 
        a8^\markup\woodwind-diagram   #'recorder #'((cc . (one two))  (lh  . (thumb)) (rh . ()))  
        g4^\markup\woodwind-diagram   #'recorder #'((cc . (one two three))  (lh  . (thumb)) (rh . ())) 
        a8^\markup\woodwind-diagram   #'recorder #'((cc . (one two))  (lh  . (thumb)) (rh . ()))  
    |
        b4^\markup \woodwind-diagram #'recorder #'((cc . (one))  (lh . (thumb))   (rh . ()))
        d8^\markup\woodwind-diagram   #'recorder #'((cc . (two))  (lh  . ()) (rh . ()))
        g4^\markup\woodwind-diagram   #'recorder #'((cc . (one two three))  (lh  . (thumb1h)) (rh . ()))
        e8^\markup\woodwind-diagram  #'recorder #'((cc . (one two three four five))  (lh . (thumb1h)) (rh . ()))  
        d^\markup\woodwind-diagram   #'recorder #'((cc . (two))  (lh  . ()) (rh . ()))
        b^\markup \woodwind-diagram #'recorder #'((cc . (one))  (lh . (thumb))   (rh . ()))
        a^\markup\woodwind-diagram   #'recorder #'((cc . (one two))  (lh  . (thumb)) (rh . ()))  
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

<<
  \new Staff \recorder_baroque_english
  %\new Staff \recorder_modern_german
  \new Staff \harp 
>>

