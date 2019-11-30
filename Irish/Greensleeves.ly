#(set-default-paper-size "a4" 'portrait)
#(set-global-staff-size 19 )

\version "2.16.2"
\header {
  title = "Greensleves"
  %arranger = "Traditional Irish"
  enteredby = "grerika @ github"
  lastupdated = "11/30/2019"
  tagline = "Gobliners"  
}

global = {
  \key c \major
  \time 6/8
}


DCfine = {
  \once \override Score.RehearsalMark #'break-visibility = #'#(#t #t #f)
  \mark \markup { \small "D.C. al fine" }
}


Fine = {
  \once \override Score.RehearsalMark #'break-visibility = #'#(#t #t #f)
  \mark \markup { \small \italic "fine" }
}


voice = \relative c'' {
  \global
  \dynamicUp
  %\bar ".|" 
     \partial 8 a8 
     | c4^C d8 e8. f16 e8 | d4^G b8 g8. a16 b8 | c4^Amin a8 a8. gis16 a8| b4^E gis8 e4 a8 
     | c4^C d8 e8. f16 e8 | d4^G b8 g8. a16 b8 | c8.^Amin b16 a8  gis8.^E fis16 gis8 | a4.^Amin a4. 
  \bar "||"
    | g'4.^C g8. f16 e8 | d4^G b8 | g8. a16 b8 | c4^Amin a8 | a8.^E gis16 a8 | b4^E gis8 | e4. 
    | g'4.^C g8. f16 e8 | d4^G b8 | g8. a16 b8 | c8.^Amin b16 a8 | gis8.^E fis16 gis8 | a4.^Amin a4. 
   \bar "|."
   \Fine
    | c8.^C d16 e8 e8. f16 e8 | d8.^G e16 d8 b8. c16 d8 | c8.^Amin b16 c8 a8. b16 c8 | b8.^E a16 b8 gis8. a16 b8
  | c8.^C d16 e8 e8. f16 g8 | d8.^G e16 d8 b8. c16 d8 | c8^Amin b a gis8.^E fis16 gis8 | a4.^Amin a4.
   \bar "||"
   | g'4^C g8 g f e  | d4^G d8 b c d | c4^Amin c8 a b c | b4^E b8 gis a b 
   | g'4^C g8 g f e  | d4^G d8 b c d | e8^Amin d c d^E b4 | a4.^Amin a4. 
   \bar "||"
   | e'8^Amin c a e' c a | d^G b g d' b g | e'^Amin c16 b a8 e'16 d c b a8
   | b8^E gis e b' gis e | g'^C e c g'16 f e d c8 | d^G b g d'16 c b a g8 | e'8^Amin d16 c b a b8^E gis e | a4.^Amin a4.
   \bar "||"
   | a8^Amin c a e'16 d c b a8 | g8^G b g d'16 c b a g8
   | a8^Amin c a e'16 d c b a8 | e8^E gis e b'16 a gis fis e8 
   | c'8^C e c g'16 f e d c8 
   | g8^G b g d'16 c b a g8 | e'16^Amin d c b a8 b16^E a gis fis e8 | a4.^Amin a4.
  \bar "||"
   | c8^Amin a b c d e | b^G g a b c d | c^Amin a b c d e | b4^E gis8 e4. 
   | e'8^C c d e f g | b,^G g a b c d | c^Amin a c b^E gis e | a4.^Amin a4.
  \bar "||"
   | c8^C g' f e d c | g^G d' c b a g | a^Amin e' d c b a | e^E b' a gis fis e 
   | c'8^C g' f e d c | g^G d' c b a g | a^Amin e' d16 c b^E a gis fis gis e | a4.^Amin \DCfine a4.
  \bar "||"
    
}

\score {
  \new Staff { \voice }
  \layout { }
  \midi {
    \context {
      \voice
    }
    \tempo 2 = 50
  }
}
