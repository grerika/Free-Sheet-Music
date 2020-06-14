#(set-default-paper-size "a4" 'portrait)
%#(set-default-paper-size "a5" 'landscape)
%#(set-global-staff-size 26)

\version "2.18"
\header {
  title = "Drowsy Maggie + Mountain Road + Tam Lin"
  enteredby = "grerika @ github"
  tagline = "Last update: 06/14/2020 (Gobliners)"
}

global = {
  \key d \major
  \time 4/4
   \tempo 2 = 70 
}



drowsyMaggie = \relative c' {
  \global
  \dynamicUp
  \bar ".|:"
  \repeat volta 2 {
      e4 b'8 e, d' e, b' e, | 
      e4 b'8 e, a fis d fis |
      e4 b'8 e, d' e, b' e, 
  }
  \alternative {
    { b'8 a b cis d a fis d }
    { b'8 a b cis d a fis a }
  }
  \break
    d4 fis8 d  cis4 e8 cis | d e fis g a fis g e |
    d4 fis8 d  cis4 e8 cis | b a b cis d a fis a
  %
    d4 fis8 d  cis4 e8 cis | d e fis g a fis g e |
    % 2nd time this is different
    a8 fis g e fis d e cis     | b a b cis d a fis a
  % Themes C
     % d8 b fis' b, d b fis' b, | cis a e' a, fis' a, e' a, | 
     % d8 b fis' b, d b fis' b, | fis' e fis gis a e cis a
  %
     % d8 b fis' b, d b fis' b, | cis a e' a, fis' a, e' a, | 
     % d e fis d b16 cis d8 e cis | b a b cis d a fis d
  \bar "|."
}

harmoniesDrowsyMaggie = \chordmode {
  e4:m r e:m r e:m  r d r	
  e:m r e:m r 
    d r d r
    d r d r
  % repeat
%  e:m e:m e:m d	
%  e:m e:m d d
  %
  d r a r d r d r
  d r a r g r g r
  d r a r d r d r
  d r a r e:m  r e:m r  
}

mountainRoad = \relative c' {
  \global
  \dynamicUp
    %fis4 a8 fis b fis a fis | fis16 a fis8 a fis e fis d e | 
    fis4 a8 fis b fis a fis | fis4 a8 fis e fis d e | 
    fis4 a8 fis b fis a fis | g4 fis8 g e fis g e
    %
    \break
    %fis4 a8 fis b fis a fis | fis16 a fis8 a fis e fis d e | 
    fis4 a8 fis b fis a fis | fis4 a8 fis e fis d e | 
    fis a a4\mordent b8 a fis b | a b d e fis g fis e
    %
  \bar "||"
    \break
    d4 d8 a b a fis a | d cis d e fis g fis e |
    d4.\mordent a8 b a fis a | g4 fis8 g e fis g a
    %
    \break
    d4 d8 a b a fis a | d cis d e fis g fis e |
    d8 cis d a b a fis a | g4 fis8 g e fis g e  
  \bar "||"
}

harmoniesMountainRoad = \chordmode {
  % D  DA D GA
  % D DA DG AD
  % D  DA D GA
  % D  DA D GA
    d2 r d a d d g a
    d2 r d a d g a d
    d2 r d a d d g a
    d2 r d a d d g a
}

tamLin = \relative c' {
  \global
  \dynamicUp
    \repeat volta 2 {
       fis4 b8 fis d' fis, b fis | g4 b8 g d' g, b g   |
       a4 cis8 a e' a, cis a     | 
    }
    \alternative  {
      { d cis b a fis b b a }
      { d cis b a fis b b4 }
    }
    %same as the previous repeat volta
  \repeat volta 2 {
       fis4 b8 fis d' fis, b fis | g4 b8 g d' g, b g   |
       a4 cis8 a e' a, cis a     | 
    }
    \alternative  {
      { d cis b a fis b b a }
      { d cis b a fis b b4 }
    }
   \bar ".|:"
    \break
      b'8 fis fis4\mordent  d8 fis b, fis' | b8 fis fis4\mordent d8 fis b, fis'
      a8 e e4\mordent cis8 e e4\mordent    | a8 e e4\mordent a8 b cis a
    \break
      b8 fis fis4\mordent  d8 fis b, fis' | b8 fis fis4\mordent d8 fis b, fis |
      g4.\mordent fis8 g a b cis 	 | d b cis a fis b b4       
  \bar ":|."
}

harmoniesTamLin = \chordmode {
  % D G A DA
  % D G A AD
  % D D A A 
  % D D G AD
    d2 d g g a a d a4 r a4 r d2
    %same as the previous line
    d2 d g g a a d a4 r a4 r d2
    d2 r d r a r a r
    d2 r d r g g a d
}




\score {
  \header { piece = "Drowsy Maggie (2x)" }
  <<
     \new ChordNames {
        \set noChordSymbol = "" 
        \set chordChanges = ##t
        \harmoniesDrowsyMaggie
      }
      \drowsyMaggie      
  >>
}


\score {
  \header { piece = "Mountain Road (2x)" }
  <<
    \new ChordNames {
        \set noChordSymbol = "" 
        \set chordChanges = ##t
        \harmoniesMountainRoad
      }
    \mountainRoad 
  >>
  
}

\score {
  \header { piece = "Tam Lin (2x)" }
  <<
    \new ChordNames {
        \set noChordSymbol = "" 
        \set chordChanges = ##t
        \harmoniesTamLin
      }
    \tamLin
  >>
  
  \layout {}
  \midi {}
}
