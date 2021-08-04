\include "default-settings.ly"
#(set-global-staff-size 19 )

\header {
  title = "Greensleeves"
  tagline = "Utoljára frissítve: 2021. augusztus 4."
}

global = {
  \key c \major
  \time 6/8
}


DCfine = {
  \once \override Score.RehearsalMark #'break-visibility = #'#(#t #t #f)
  \mark \markup { \tiny "D.C. al fine" }
}


Fine = {
  \once \override Score.RehearsalMark #'break-visibility = #'#(#t #t #f)
  \mark \markup { \tiny \italic "fine" }
}


voice = \relative c'' {
  \global
  \dynamicUp
  %\bar ".|"
     \partial 8 a8
     | c4 d8 e8. f16 e8 | d4 b8 g8. a16 b8 | c4 a8 a8. gis16 a8| b4 gis8 e4 a8
     | c4 d8 e8. f16 e8 | d4 b8 g8. a16 b8 | c8. b16 a8 gis8. fis16 gis8 | a4. a4.
  \bar "||"
%  \break
    | g'4. g8. f16 e8 | d4 b8 | g8. a16 b8 | c4 a8 | a8. gis16 a8 | b4 gis8 | e4.
    | g'4. g8. f16 e8 | d4 b8 | g8. a16 b8 | c8. b16 a8 | gis8. fis16 gis8 | a4. a4.
   \bar "|."
   \Fine
      \break
  | c8.  d16 e8 e8. f16 e8 | d8. e16 d8 b8. c16 d8 | c8. b16 c8 a8. b16 c8 | b8. a16 b8 gis8. a16 b8
  | c8.  d16 e8 e8. f16 g8 | d8. e16 d8 b8. c16 d8 | c8 b a gis8. fis16 gis8 | a4. a4.
 \bar "||"
 | g'4  g8 g f e  | d4  d8 b c d | c4  c8 a b c | b4  b8 gis a b
 | g'4  g8 g f e  | d4  d8 b c d | e8  d c d  b4 | a4.  a4.
 \bar "||"
 \break
 | e'8  c a e' c a | d  b g d' b g | e'  c16 b a8 e'16 d c b a8
 | b8  gis e b' gis e | g' e c g'16 f e d c8 | d  b g d'16 c b a g8 | e'8  d16 c b a b8  gis e | a4.  a4.
 \bar "||"
 | a8  c a e'16 d c b a8 | g8  b g d'16 c b a g8
 | a8  c a e'16 d c b a8 | e8  gis e b'16 a gis fis e8
 | c'8  e c g'16 f e d c8
 | g8  b g d'16 c b a g8 | e'16  d c b a8 b16  a gis fis e8 | a4.  a4.
  \bar "||"
  \break
 | c8  a b c d e | b  g a b c d | c  a b c d e | b4  gis8 e4.
 | e'8  c d e f g | b,  g a b c d | c  a c b  gis e | a4.  a4.
  \bar "||"
 | c8  g' f e d c | g  d' c b a g | a  e' d c b a | e  b' a gis fis e
 | c'8  g' f e d c | g  d' c b a g | a  e' d16 c b  a gis fis gis e |
 a4.  a4. \DCfine
  \bar "||"
}

harmonies = \chordmode {
  r8
  c2. g a:min e c g a4.:min e4. a2.:min
  c2. g a4.:min e e2. c g2. a4.:min e a2.:min
  c2. g a:min e c g a4.:min e4. a2.:min
  c2. g a:min e c g a4.:min e4. a2:min r4
  a2.:min g a:min e c g a4.:min e a2:min r4
  a2.:min g a:min e c g a4.:min e a2:min r4
  a2.:min g a:min e c g a4.:min e a2:min r4
  c2. g a:min e c g a4.:min e4. a2.:min
}

\score {
  <<
     \new ChordNames {
        \set noChordSymbol = ""
        \set chordChanges = ##t
        \harmonies
    }
    \voice
  >>
  \layout { }
  \midi {
    \context {
      \voice
    }
    \tempo 2 = 50
  }
}
