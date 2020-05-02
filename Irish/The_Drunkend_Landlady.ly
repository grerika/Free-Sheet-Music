%#(set-default-paper-size "a4" 'portrait)
#(set-default-paper-size "a5" 'landscape)
%#(set-global-staff-size 26)

\version "2.18"
\header {
  title = "The Drunken Landlady"
  arranger = "arr. Mallinson, Maden"
  enteredby = "grerika @ github"
  tagline = "Last update: 05/02/2020 (Gobliners)"  
}

global = {
  \key d \major
  \time 4/4
}

voice = \relative c'' {
  \global
  \dynamicUp
  \partial 4  d8 (cis  b\staccato^\markup{Em}  ) e, e4\mordent |
  b'8 (a fis a b\staccato ) e, e4\mordent | 
  b'8 (a fis b a^\markup{D} b a fis d4) a'8 \staccato g (fis a) a (d b a fis a 
  b\staccato^\markup{Em} ) e, e4\mordent  b'8 (a fis a 
  b a d a b a fis b a4^\markup{D}~a8 b d fis e cis | d^\markup{Bm} b a fis e4^\markup{Em})
  \bar ":|.|:"
  \break
  fis8 (a b^\markup{Em} e) e (d e4 d8 e | fis4^\markup{D} a8 fis e fis d b a b a fis d4) 
  a'8\staccato d,  (fis a) a (d b^\markup{Bm} a fis a b^\markup{Em} e) e (d e4 d8 e 
  | fis4^\markup{D} a8 fis e fis d b a4~a8 b d fis e cis d^\markup{Bm} b a fis e4^\markup{Em} )
  \bar "|."
}



verseHUN = \lyricmode {
 
}

\score {
    \new Staff { \voice }
  
  \layout { }
  \midi {
    \context {
      \voice
    }
    \tempo 2 = 90
  }
}


