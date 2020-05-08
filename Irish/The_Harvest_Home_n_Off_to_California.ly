#(set-default-paper-size "a4" 'portrait)
%#(set-global-staff-size 22)

\version "2.18"
\header {
  title = "Harvest Home + Off to California"
  enteredby = "grerika @ github"
  tagline = "Last update: 05/02/2019 (Gobliners)"
}

global = {
  \key d \major
  \time 4/4
    %\tempo 4 = 125
}

harvesthome = \relative c'{
  \global
  \dynamicUp
  \partial  4 
    a'8  fis
   \repeat volta 2 {
     \bar ".|:"  d  a' fis a d, a' fis a 
         | d  e fis e d cis b a 
         | e'  a, fis' a, g' a, fis' a, 
         | \tuplet 3/2 {e'  fis e} \tuplet 3/2 {d cis b} \tuplet 3/2 {a  b a} \tuplet 3/2 {g fis e} 
         | d8  a' fis a d, a' fis a
         | d  e fis e d cis b a 
         | e'4  fis \tuplet 3/2 {g8 fis e} cis e  
   }
     \alternative {
      { d4  fis d  a8  fis }
      { d'4  fis d  cis8 d }
    }	
      \repeat volta 2 {
         e8  a, a a fis'  a, a a 
         | g'  a, fis' a, e'  a, a a 
         | e'  a, fis' a, g' a, fis' a, 
         | \tuplet 3/2 { e'  fis e} \tuplet 3/2 { d cis b} \tuplet 3/2 { a  b a } \tuplet 3/2  {g fis e} 
         | d8  a' fis a d, a' fis a 
         | d  e fis e d cis b a 
         | e'4  fis4 \tuplet 3/2 {g8 fis e} cis e
      }
         \alternative {
            { d4  fis d  cis8 d }
            { d4  fis d2 }
         }
   %\bar ":|."
}

harmoniesHarvestHome = \chordmode {
    a4 d2. r4 d2. r4 a2. r4 e4.:m r8 a4.:7 r8
    d2. r4 d2. r4 a2.:7 r4 d2. a4 d1
    %
    a2 d a:7 d a a e:m a:7
    d2. r4 d2. r4 a1:7 d
}

keyofftocalifornia = {
  \key g \major
  \time 4/4
    %\tempo 4 = 125
}

offtocalifornia = \relative c'{
  \keyofftocalifornia
  \dynamicUp
  \partial  4
     \tuplet 3/2 {d8 e fis}
   \repeat volta 2
     {
       g8  fis g b a  g e d | g  b d g e4  \tuplet 3/2 {d8 e fis}
       | g8  fis g d e  d b g
       | a  b a g e4  \tuplet 3/2 {d8 e fis}
       | g8  fis g b a  g e d | g  b d g e4  \tuplet 3/2 { d8 e fis}
       | g8  fis g d e  d b g |
     }
     \alternative {
      { \tuplet 3/2 {a8  b a} fis8 a g4  \tuplet 3/2 { d8 e fis} |}
      { \tuplet 3/2 {a8  b a} fis8 a g4  \partial  4\tuplet 3/2 { d'8 e fis} }
    }	
      \repeat volta 2 {
        | g  fis e g fis  e d fis
        | e  d e fis e  d b d
        | g  fis g d e  d b g
        | a  b a g e4  \tuplet 3/2 {d8 e fis}
        | g  fis g b a  g e d
        | g  b d g e4  \tuplet 3/2 {d8 e fis}
        | g8  fis g d e  d b g
         }
         \alternative {
            { \tuplet 3/2 {a8  b a} 	fis8 a g4 \tuplet 3/2 {d'8  e fis} }
            { \tuplet 3/2 {a,8  b a} 	fis8 a g4 (g4 ) }
         }
   \bar "|."
}

harmoniesOffToCalifornia = \chordmode {
  r4 g2 d2 g2 c2 g2 e:m a:m d2  g2 d g c g e:m d g d:g
  e2 b:m  c e:m g e:m a:m d g d g2 c g e:m d g d2. g4
}


\score {
  \header { 
      piece = "Harvest Home" 
      opus = "Irish Hornpipe"
  }
  <<
      \new ChordNames {
        \set noChordSymbol = "" 
        \set chordChanges = ##t
        \harmoniesHarvestHome
      }
      \harvesthome 
  >>
}

\score {
  \header { 
    piece = "Off to California" 
    opus = "Irish Hornpipe"
  }
   <<
      \new ChordNames {
        \set noChordSymbol = "" 
        \set chordChanges = ##t
        \harmoniesOffToCalifornia
      }
      \offtocalifornia 
   >>
}