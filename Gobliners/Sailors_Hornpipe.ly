\include "default-settings.ly"
%#(set-global-staff-size 24 )

\header {
  title = "Sailor's Hornpipe"
  subtitle = "Popeye"
  tagline = "Utoljára frissítve: 2021. augusztus 4."
}

global = {
  \key e \minor
  \time 4/4
  \tempo "Vivace" 2 = 66-108
}



voice = \relative c'' {
  \global
  \dynamicUp
  \partial 4 g'8 fis 
  g4 g, g d'8 c | b (d) g fis g4 \breathe fis8 g |
  a4 a, a a'8 g | fis4\trill d d \breathe e8 fis |
  g (fis) e d e (d) c b | c (b) a g a (g) fis e | 
  d (e) fis g a b c d | b (g) a (fis) g4 \breathe   
  \bar ":|.|:"
  \break
  d'8 c | b (d) g d b d g d | e4 c c \breathe e8 d | 
  cis (e) a e cis e a e fis4 d d \breathe  e8 fis | 
  g (fis) e d e (d) c b | c (b) a g a (g) fis e | 
  d (e) fis g a b c d | b (g) a (fis) g4 \breathe
  \bar ":|."    
}

harmonies = \chordmode {
    r4 
    g4 r g r  | g r g r | a r a r | d r d r 
    g/b r g2 c a:7/cis d4 r d4 r4 g4 d4:7 g r
    % 
    g r g r       | c r c r | a r a r  | 
    d r d:7 r     | g/b r g r |
    c r a:7/cis r | d:7 r d:7 r  |
    g d:7 g 
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
    \tempo 2 = 100
  }
}