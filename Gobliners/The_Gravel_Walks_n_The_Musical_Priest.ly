#(set-default-paper-size "a4" 'portrait)
%#(set-global-staff-size 24)

\version "2.18"
\header {
  title = "The Gravel Walks + The Musical Priest"
  enteredby = "grerika @ github"
  tagline = "Last update: 08/28/2020 (Gobliners)"
}

gravelswalk = \relative c'' {
     \key g \major
      \time 4/4
     %\bar ".|:"
       a4  e'8 a,  \tuplet 3/2 {c8 b a } e'8 a, |
       a4 e'8 a, b  a g b |
       a4  e'8 a,  \tuplet 3/2 {b c d } e8 fis | g  e d c b a g b
     %\bar ":|."	ˇ
       a4  e'8 a,  \tuplet 3/2 {c8 b a } e'8 a, |
       a4 e'8 a, b  a g b |
       a8 b c d  e8 fis g a | g  e d c b a g b
     \bar "||"
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
    a2:m a:min  a:min  g a:min  a:min  g g
    c c c g c c g g
    c c c g a:min a:min g g
}

musicalpriest = \relative c''{
   \key d \major
    \time 4/4
    \bar ".|:"
    %\partial 4 b8 a
      fis,8 b b4\mordent b8 a b d | cis b a fis' e cis b a |
      fis b b4\mordent b8 a b d | cis b a fis b4
    \bar ":|.|:"
    \break
    \repeat volta 2 {
      b8 cis | d4 d8 cis d fis e d | \tuplet 3/2 {cis8 b a } e'8 a, fis' a, e' a,
    }
    \alternative {
      { d8 cis b cis d fis a fis | e d cis d b4 } %\break
      { \partial 1 d8 cis b cis d b' a fis    e d cis d b4 }
    }
    \break
    \repeat volta 2 {
      b8 cis | d
      b b4\mordent b'8 a fis b
      a fis e cis a cis e cis
    }
    \alternative {
      { d b b4\mordent b'8 a fis b  a8 fis e cis  b4 }
      { \partial 1 d4 d8  cis  d | fis a fis8 e d | cis8 d b4\fermata  }
    }
    \bar ":|."
}

harmoniesMusicalPriest = \chordmode {
}



\score {
  \header { 
      piece = "The Gravel Walks" 
    } % (reel)
  <<
      \new ChordNames {
        \set noChordSymbol = ""
        \set chordChanges = ##t
        \harmoniesGravelWalk
      }
     \gravelswalk
  >>
}

\score {
  \header { piece = "The Musical Priest" } % (reel)
  <<
      \new ChordNames {
        \set noChordSymbol = ""
        \set chordChanges = ##t
        \harmoniesMusicalPriest
      }
      \musicalpriest
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