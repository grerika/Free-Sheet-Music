%#(set-default-paper-size "a5" 'landscape)
#(set-default-paper-size "a4" 'portrait)
%#(set-global-staff-size 26)

\version "2.18"
\header {
  title = "The Kesh + Merrily kissed the Quaker's Wife"  
  enteredby = "grerika @ github"
  tagline = "Last update: 05/08/2020 (Gobliners)"
}

global = {
  \key g \major
  \time 6/8
}

keshjig = \relative c' {
  \global
  %\dynamicUp
  \bar ".|:"
  g'4 g8 g8 a b | a4 a8 a8 b d | e d d g d d  | e d b d b a |
  g4 g8 g8 a b  | a4 a8 a8 b d | e8 d d g d d | b a fis g4.
  \bar ":|.|:"
  \break
   b4 b8 d4 d8 | e8 g e d b a | b4 b8 d b g | a b a a g a | 
   b a b d cis d | e g e d b d | g fis g a g a | b g g g4. 
  \bar ":|."
}

harmoniesKesh = \chordmode {
    g4. g d d c g c d  | g g d d c g d g
    g g c g4 r8 g4. g d d    | g g c g c d g
}

keymerrily = {
  \key g \major
  \time 12/8
 % \tempo 2 = 90
}

merrily = \relative c' {
  \keymerrily
  \dynamicUp
  \partial 8
%\bar ".|:"
  d8%^\markup{\italic V} %Viktor
    | g a b d,4 b'8 c4 a8 b g e
    | g a b d, e g a4. a8 g8 e
    | g a b d,4 b'8
    | c4 a8 b g e
    | g a b d,4 e8 g2  r8  d8%^\markup{V + E} %Viktor + Erika
    | g8 a b d,4 b'8 c4 a8 b g e
    | g a b d,8 e8 g8 a4 a8 a4 e8
    | g a b d,4 b'8  c4 a8 b g e
    | g a b d,8 e fis g4 g8 g4 
  \bar "||" %\bar ":|.|:"
  \break
    | a8%^\markup{E}
    | b8 g g a g g b g g a g e
    | g a b d, e g a4. a8 g a
    | b g g a g g b g g a g e
    | g a b  d,4 e8 g2 r8 g8%^\markup{E + V}
    | b8 g g a g g b g g a g e
    | g a b d,4 e8 a4  a8 a4.
    | g8 a g fis8 g fis
    | e fis e  d e d
    | g a b d, e fis g4 g8 g4
  \bar ".|:"
    | d'8    g4 g8 a8 g a b  a g e4 d8
    | g4 g8 g8 a b a4 a8 a4.
    | g8 a g fis8 g fis
    | e fis e  d e d
    | g a b d, e fis g4 g8 g4.
  \bar ":|."
}

harmoniesMerrily = \chordmode {
  r8 
  g4. g c g4 r8 g4. g d d g4. g c g4 r8 g4 r8 d4. g4. r4.
  g4. g c g4 r8 g4. g d d g4. g c g g d g g4 r8
  %
  g4. d g c g g d d g d g c g d g g4 r8
  g4. d g c g g d d g d c d g d g g4 r8
  %
  g4. d g g g g d d g d c d g d g g4 r8
}

\score {
  \header {
    piece = "The Kesh"
    opus = "jig"
    %arranger = "Traditional Irish"
  }
  <<
    \new ChordNames {
        \set noChordSymbol = "" 
        \set chordChanges = ##t
        \harmoniesKesh
    }
    \keshjig 
  >>
}


\score {
  \header { 
      piece = "Merrily Kissed The Quaker's Wife"
     %arranger = "Traditional Irish"
  }
   <<
    \new ChordNames {
        \set noChordSymbol = "" 
        \set chordChanges = ##t
        \harmoniesMerrily
    }
    \merrily 
  >>
  \layout {}
  \midi {}
}