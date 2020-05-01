#(set-default-paper-size "a4" 'portrait)
%#(set-global-staff-size 24)

\version "2.18.2"
\header {
  title = "Gallagher's Frolics"
  subtitle = "jig"
  %arranger = "Hornpipe, Ireland, traditional"
  enteredby = "grerika @ github"
  %source https://thesession.org/tunes/160
  lastupdated = "05/01/2019"
  tagline = "Last update: 05/01/2020 (Gobliners)"
}

global = {
  \key e \minor
  \time 6/8
    %\tempo 4 = 125
}

flute = \relative c'{
  \global
  \partial 8 d8
    \repeat volta 2 {
    e4.^\markup{Em} g8^\markup{Em} fis e |
    b'4.^\markup{Em}  d8^\markup{D} b a  |
    b^\markup{Em}  d b b^\markup{Em} a b | 
    g^\markup{G}  b g  a^\markup{D} fis d |
    e4.^\markup{Em}   g8^\markup{Em} fis e | 
    b'^\markup{Em}  a b d^\markup{D} b a | 
    b^\markup{Em}  a g fis^\markup{D} a fis 
    }
   \alternative {
     {g^\markup{Em}  e e e4^\markup{Em} d8}
     {g^\markup{Em}  e e e4^\markup{Em} e8}
  }
   \bar ".|:" 
   \repeat volta 2{
    e'4^\markup{Em} g8 g^\markup{Em} fis e | 
    g4^\markup{Em} b8 b^\markup{G} g e |
    d^\markup{D} cis d fis^\markup{D} e d | 
    fis^\markup{D} a d,  fis^\markup{Bm} e d |
    e4^\markup{Em} fis8 g^\markup{Em} fis e |
    d^\markup{D} fis e d^\markup{D} b a | 
    b^\markup{Em} a g  fis^\markup{D} a fis|
   }
    \alternative {
      {g^\markup{Em} e e e4^\markup{Em} e8}
      {g^\markup{Em} e e e4^\markup{Em} d8 }
    }
    \bar ":|."
}


\score {
  
  \new Staff {
    <<
    %\chords { Em Em }
    \flute 
    >>
  }
  \layout { }
  \midi {
    \context {
      \flute
    }
    \tempo 2 = 90
  }
}
