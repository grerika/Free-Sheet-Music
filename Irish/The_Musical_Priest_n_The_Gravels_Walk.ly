#(set-default-paper-size "a4" 'portrait)
%#(set-global-staff-size 24)

\version "2.18"
\header {
  title = "The Musical Priest + The Gravel's Walk"
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
      { d8 cis b cis d b' a fis   e d cis d b4 }
    }
    b8 cis |
    d b b4\mordent b'8 a fis b 
    a fis e cis a cis e cis 
    d b b4\mordent b'8 a fis b 
    a fis e cis d cis b8 a b4 
    \bar ":|."
}

gravelswalk = \relative c'' {
     \keygravel
     \bar ".|:"
       a4^\markup{Am}  e'8 a,  \tuplet 3/2 {c8 b a } e'8 a, |
       a4 e'8 a, b^\markup{G}  a g b |
       a4^\markup{Am}  e'8 a,  \tuplet 3/2 {b c d } e8 fis |
       g^\markup{G}  e d c b a g b
     \bar ":|."
     \break
       a4^\markup{Am} a'8 a, g' a, fis' a, | 
       a4 e'8 a, b^\markup{G}  a g b | 
       a4^\markup{Am}  a'8 a, g' a, fis' a,
       g'^\markup{G} e d c b a g b 
     \break
       a4^\markup{Am} a'8 a, g' a, fis' a, | 
       a4 e'8 a, b^\markup{G}  a g b | 
       a^\markup{Am}  b c d e fis g a | 
       g^\markup{G} e d c b a g b 
     \bar ".|:"
     \break
       \tuplet 3/2 {c8^\markup{Am}  b a } b g a4 a8 b |
       c a a d b^\markup{G}  a g b |
       \tuplet 3/2 {c8^\markup{Am} b a} b g a b c d |
       e^\markup{G} fis g e d b g b |
     \bar ":|.|:"
     \break
     \key c \major
      c4^\markup{C} g'8 c, a' c, g' c, |
      c4 g'8 c, b^\markup{G} a g b |
      c4^\markup{C} g'8 c, a' c, g' a |
      g^\markup{G} e d c b a g b
     \break
      c4^\markup{C} g'8 c, a' c, g' c, |
      c4 g'8 c, b^\markup{G} a g b |
      a^\markup{Am} b c d e f g a |
      g^\markup{G} e d c b a g b
     \bar ":|."
    
}

\score {
  \header { piece = "The Musical Priest" }
  \new Staff {
    <<
    \chords { 
    }
    \musicalpriest 
    >>
  }
}


\score {
  \header { piece = "The Gravel Walks (reel)" }
  \new Staff {
    <<
    \chords { 
    }
    \gravelswalk 
    >>
  }
}
