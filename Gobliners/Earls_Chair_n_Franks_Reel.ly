\include "default-settings.ly"

\header {
  title = "Earl's Chair + Frank's Reel"
  %arranger = "Hornpipe, Ireland, traditional"
  tagline = "Utoljára frissítve: 2021. augusztus 4."
}

global = {
  \key a \major
  \time 4/4
}


earlsChair  = \relative c'' {
    \key d \major 
    \time 4/4
   % \tempo 4 = 125
    b4 b8 d b a fis a | 
    b4 b8 d b a fis a | 
    a fis \tuplet 3/2 { fis fis fis } d8 fis \tuplet 3/2 { fis fis fis  }|
    a8 fis d' b a fis e fis |
    %
    b4 b8 d b a fis a | 
    b4 b8 d b a fis a | 
    a fis a b d cis d fis | 
    e d e fis d4. r8
    \bar ":|.|:"
    e4 e8 fis d4 d8 fis | 
    e d e fis d b a4 |
    e'4 e8 fis d cis d e | 
    fis e d b a d, fis a |
    % 
    e'4 e8 fis d b \tuplet 3/2 { b b b } |
    g'8 b, \tuplet 3/2 { b b b } d8 e fis g |
    a fis b fis a fis e g | 
    fis e d b a d, fis a
    \bar ":|."
}

harmoniesEarlsChair = \chordmode {
    b4:m r b4:m r |  b4:m r b4:m r
    d4 r d r | d4 r d r
    b4:m r b4:m r |  b4:m r b4:m r
    d4 r g r | a4 r d r
    % 
    a r d r | a r b:min r | a r d r | d r a r 
    a r d r | g r g r | d r d r | d r a r
}

franksReel = \relative c'{
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


harmoniesFranksReel = \chordmode {
    a2 d | a4 r a4 r | d2 a | d e | 
    a d2 | a4 r a4 r | d2 a | e a | e a
    a e  | a4 r a4 r | d2 a | d e |
    a e  | a4 r a4 r | d2 a | e a | e a
}

\score { 
    \header {
      piece = "Earl's Chair"
    }
    <<
      \new ChordNames {
        \set noChordSymbol = "" 
        \set chordChanges = ##t
        \harmoniesEarlsChair
      }
      \earlsChair 
    >>
    %\layout {}
    %\midi {}
}


\score { 
    \header {
      piece = "Frank's Reel"
    }
    <<
      \new ChordNames {
        \set noChordSymbol = "" 
        \set chordChanges = ##t
        \harmoniesFranksReel
      }
      \franksReel 
    >>
    %\layout {}
    %\midi {}
}
