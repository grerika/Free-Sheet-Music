#(set-default-paper-size "a4" 'portrait)
%#(set-global-staff-size 24)

\version "2.18"
\header {
  title = "Frank's Reel"
  %arranger = "Hornpipe, Ireland, traditional"
  enteredby = "grerika @ github"
  tagline = "Last update: 05/07/2020 (Gobliners)"
}

global = {
  \key a \major
  \time 4/4
    %\tempo 4 = 125
}

flute = \relative c'{
  \global
    \repeat volta 2 {
    a'8 cis b a fis4 a8 fis | 
    e fis a b cis a b cis |
    d4 d8 fis e cis a e' |
    fis a e cis b d cis b |
    a cis b a fis4 a8 fis |
    e fis a b cis a b cis |
    d cis d fis e cis a cis 
    }
    \alternative {
      {b a gis b a4 \tuplet 3/1 { e fis gis }}
      {b8 a gis b a e' fis gis }
    }
    \break
    \repeat volta 2 {
        a8 a, a gis' | 
        a, a fis' a, | 
        e' fis fis e cis a b cis | 
        d4. fis8 e cis a cis |
        b cis d e fis e fis gis |
        \break
        a8 a, a gis' | 
        a, a fis' a, | 
        e' fis fis e cis a b cis | 
        d fis \tuplet 3/2 { fis fis fis } 
        e8 cis a cis 
    }
    \alternative {
        { b a gis b a e' fis gis }
        { b, a gis b a2 }
    }
    \bar "|."
    
}


harmonies = \chordmode {
    a2 d a1 d2 a b:m e a d2 a1 d2 a e a e a
    a e a a d a d e a e a a d a e a e a
}

\score { 
    <<
      \new ChordNames {
        \set chordChanges = ##t
        \harmonies
      }
    \flute 
    >>
 
  \layout { }
  \midi {
    \context {
      \flute
    }
    \tempo 2 = 90
  }
}
