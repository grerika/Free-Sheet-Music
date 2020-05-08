#(set-default-paper-size "a4" 'portrait)
%#(set-default-paper-size "a5" 'landscape)
%#(set-global-staff-size 26)

\version "2.18"
\header {
  title = "The Drunken Landlady + Cooley's + The Wise Maid"
  enteredby = "grerika @ github"
  tagline = "Last update: 05/08/2020 (Gobliners)"
}

global = {
  \key d \major
  \time 4/4
}



drunken = \relative c'' {
  \global
  \dynamicUp
  \partial 4  d8 (cis  b\staccato  ) e, e4\mordent |
  b'8 (a fis a b\staccato ) e, e4\mordent | 
  b'8 (a fis b a b a fis d4) a'8 \staccato g (fis a) a (d b a fis a 
  b\staccato ) e, e4\mordent  b'8 (a fis a 
  b a d a b a fis b a4~a8 b d fis e cis | d b a fis e4)
  \bar ":|.|:"
  \break
  fis8 (a b e) e (d e4 d8 e | fis4 a8 fis e fis d b a b a fis d4) 
  a'8\staccato d,  (fis a) a (d b a fis a b e) e (d e4 d8 e 
  | fis4 a8 fis e fis d b a4~a8 b d fis e cis d b a fis e4 )
  \bar ":|."
}

harmoniesDrunken = \chordmode {
  r4 e1:m r1 d1 r1 e:m r1 d b2:m e4:m r4
  e1:m d1 r1 r2 b2:m e1:m d1:m r1 b2:m e2:m
}

cooleys = \relative c' {
  \global
  \dynamicUp
  \partial 4  
  \bar ".|:"
    d4 | e8 b' b a b4 e,8 b' | b4 a8 b d b a g | 
    fis d a' d, b' d, a' d, | fis d a' d, d' a fis d | 
    e b' b a b4 e,8 b' | b4 a8 b d e fis g |
    a fis e cis d b a fis | d e fis d e4
  \bar ":|.|:" 
  \break
    g'8 e | 
    e b b4 e8 fis g fis   | e b b4 g'8 e d b |
    a4 fis8 a d, a' fis a | a4 fis8 a d e fis g |
    e8 b b4 e8 b g' b, | e b b4 d8 e fis g | 
    a fis e cis d b a fis | d e fis d e4
  \bar ":|."
}


wisemaid = \relative c' {
  \global
  \dynamicUp
  \partial 4  
  \bar ".|:"
     d8 e | 
      fis4.\mordent g8 fis e d e | fis a a b a fis e d 
     d'4 \tuplet 3/2 { e8 fis g} fis8 d e cis | 
      d b a fis b e, e4\mordent \break
      fis4. \mordent g8 fis e d e | fis a a b a fis e d | 
      d'4 \tuplet 3/2 { e8 fis g } fis8 d e cis | d b a g fis [ d ]
  \bar ":|.|:" 
    \break
  fis a | 
    d4 a8 g fis d fis a | d fis a fis g fis e g |
    fis a, d fis e a, cis e | d fis e d cis a a4\mordent
    b8 d, g b a d, fis a | d fis a fis g fis e d |
    \tuplet 3/2 { b8 cis d } cis8 e d b a g | fis a e a d,4   
  \bar ":|."
}



\score {
  \header { piece = "The Drunken Landlady" }
  <<
     \new ChordNames {
        \set noChordSymbol = "" 
        \set chordChanges = ##t
        \harmoniesDrunken
      }
      \drunken
  >>
}

\score {
  \header { piece = "Cooley's" }
  <<
    \cooleys 
  >>
}
\score {
  \header { piece = "The Wise Maid" }
  <<
    \wisemaid 
  >>
}


