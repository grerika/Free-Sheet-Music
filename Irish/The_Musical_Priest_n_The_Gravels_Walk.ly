#(set-default-paper-size "a4" 'portrait)
%#(set-global-staff-size 24)

\version "2.18"
\header {
  title = "The Musical Priest + The Gravel walk"
  enteredby = "grerika @ github"
  tagline = "Last update: 05/02/2020 (Gobliners)"
}

global = {
  \key d \major
  \time 4/4
    %\tempo 4 = 125
}

keygravel = {
    \key g \major 
    \time 4/4
}

musicalpriest = \relative c''{
  \global
    \bar ".|:"
    \partial 4 b8 a
      fis b b4\mordent b8 a b d | cis b a fis' e cis b a | 
      fis b b4\mordent b8 a b d | cis b a fis b4 
    \bar ":|.|:"
    \break
    \repeat volta 2 {	
      b8 cis | d4 d8 cis d fis e d | \tuplet 3/2 {cis8 b a } e'8 a, fis' a, e' a, 
    }
    \alternative {
      { d8 cis b cis d fis a fis | e d cis d b4 } %\break
      { d8 cis b cis d b' a fis    e d cis d b4 }
    }
    b8 cis | d
    b b4\mordent b'8 a fis b
    a fis e cis a cis e cis 
    d b b4\mordent b'8 a fis b 
    a fis e cis d cis b8 a b4 
    \bar ":|."
}

harmoniesMusicalPriest = \chordmode {
}

gravelswalk = \relative c'' {
     \keygravel
     \bar ".|:"
       a4  e'8 a,  \tuplet 3/2 {c8 b a } e'8 a, |
       a4 e'8 a, b  a g b |
       a4  e'8 a,  \tuplet 3/2 {b c d } e8 fis |
       g  e d c b a g b
     \bar ":|."
     \break
       a4 a'8 a, g' a, fis' a, | 
       a4 e'8 a, b  a g b | 
       a4  a'8 a, g' a, fis' a,
       g' e d c b a g b 
     \break
       a4 a'8 a, g' a, fis' a, | 
       a4 e'8 a, b  a g b | 
       a  b c d e fis g a | 
       g e d c b a g b 
     \bar ".|:"
     \break
       \tuplet 3/2 {c8  b a } b g a4 a8 b |
       c a a d b  a g b |
       \tuplet 3/2 {c8 b a} b g a b c d |
       e fis g e d b g b |
     \bar ":|.|:"
     \break
     \key c \major
      c4 g'8 c, a' c, g' c, |
      c4 g'8 c, b a g b |
      c4 g'8 c, a' c, g' a |
      g e d c b a g b
     \break
      c4 g'8 c, a' c, g' c, |
      c4 g'8 c, b a g b |
      a b c d e f g a |
      g e d c b a g b
     \bar ":|."
    
}

harmoniesGravelWalk = \chordmode {
    a2:m a:min  a:min  g a:min  a:min  g g
    a2:m a:min  a:min  g a:min  a:min  g g
    a2:m a:min  a:min  g a:min  a:min  g g
    a2:m a:min  a:min  g a:min  a:min  g g
    c c c g c c g g 
    c c c g a:min a:min g g 
}

\score {
  \header { piece = "The Musical Priest" }
  <<
      \new ChordNames {
        \set noChordSymbol = "" 
        \set chordChanges = ##t
        \harmoniesMusicalPriest
      }
      \musicalpriest 
  >>
}


\score {
  \header { piece = "The Gravel walk (reel)" }
  <<
      \new ChordNames {
        \set noChordSymbol = "" 
        \set chordChanges = ##t
        \harmoniesGravelWalk
      }
     \gravelswalk 
  >>
  \layout {}
  \midi { 
    \context {
      \musicalpriest
      \gravelswalk
    }
    \tempo 2 = 90
  }
}
