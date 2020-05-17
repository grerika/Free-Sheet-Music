%#(set-default-paper-size "a5" 'landscape)
#(set-default-paper-size "a4" 'portrait)
#(set-global-staff-size 18)

\version "2.18"
\header {
    title = "Brian Boru's March"
    composer = "Anonymous"
   % arranger = "Arranged for Flute (Alto Recorder) and Piano by Valerio Carpeggiani"
    enteredby = "grerika @ github"
    tagline = "Last update: 05/17/2020 (Gobliners)"
}

global = {
  \key a \minor
  \time 6/8
 % \tempo 4. = 75
}

flute = \relative c'' {
  \global
  \partial 8  e16^\markup{Theme A} d 
  c8. b16 a8 a4 e'16 d | c8. b16 a8 a4 d16 c | b8. a16 g8 g4 d'16 c | 
  b8. a16 g8 g4 e'16 d | c8. b16 a8 a4 e'16 d |c8. b16 a8 a4. | 
  a8. c16 d8 e4 d8  | c8. b16 a8 a4 r8 
  \bar ":|.|:"
  \break
  %a or g?
  a8^\markup{Theme B} c d e4 d8  | e4 d8 e4 d8 | g,8 b c d4 b8 | d4 b8 d4 c8 | 
  a8 c d e4 d8 | e4 d8 e4 d8 | c8 b a e'4 d8 | c8 b a a4 r8
  \bar ":|.|:" \break
  % Theme C with Viktor's version
  c8.^\markup{Theme C} b16 a8 a'4 a8  | c,8. b16 a8 a'4 a8 | 
  b,8. a16 g8 g'4 g8 | b,8. a16 g8 g'4 g8 |  
  c,8. b16 a8 a'4 a8  | c,8. b16 a8 a'4 a8 | 
  a,8. c16 d8 e4 d8 | c8. b16 a8 a4 r8
  % Theme C in the original score
  %c'8.^\markup{Theme C} b16 a8 a4 e'8  | c8. b16 a8 a4 d8 | 
  %b8. a16 g8 g4 d'8 | b8. a16 g8 g4 e'8 |
  %  
  %c8. b16 a8 a4 e'8  | c8. b16 a8 a4 a8 | 
  %a8 c d e4.  | d8 c4 a8 a4
  \bar "|."
}

upperHarp =  \relative c' {
  %\clef bass
  \global \partial 8 r8
  % Theme A
  r4. <<e a c e>>  | r4. <<e, a c e>> |
  r4. <<d, g b d>> | r4. <<d, g b d>> |
  r4. <<e, a c e>>  | r4. <<e, a c e>> |
  a,8. c16 d8 e4 d8 | c8. b16 a8 a4 r8
  \bar ":|.|:"
  % Theme B
  c g g e' d g, | e' d g, e' d g, | c f, f d' c b | d c b d c b | 
  e, a e b' a f | e' a, a e' a, c | c b a e'4 d8 | c b a a4 r8
  \bar ":|.|:"
  % Theme C
  a16 e c a c e a b c d d a | a16 e c a c e a b c d d a |
  g16 d b g b d g a b c c g | g16 d b g b d g a b c c g |
  a16 e c a c e a b c d d a | a16 e c a c e a b c d d a |
  a8 c d e4. | d8 c4 a8 a4
  \bar "|."
}

lowerHarp = \relative c {
  \clef bass
  \global
  \partial 8 r8 
  % Theme A
  r4. <<a c e a>>  | r4. <<a, c e a>> |
  r4. <<g, b d g>> | r4. <<g, b d g>> |
  r4. <<a, c e a>>  | r4. <<a, c e a>> |
  a8. g16 f8 e4 f8 | g8. a16 a8 a4 r8 |
  \bar ":|.|:"
  % Theme B
  <<g,2. c e g>> | <<e4 g c e>>  <<d,8 g b>> <<c,4 e g c>> <<g,8 d'>> |
  <<g,2. c e g>> | <<b,4 g'>> <<g,8 d'>> <<d4 b'>> <<g,8 b>> |
  <<a2. c e a>> | <<e4 a c e>> <<d,8 f a>>  <<c,4 e a c>> <<a,8 d>>  |
  a'8 g8 f8 e4 f8 | g8 a a a4 r8 
  \bar ":|.|:"
  % Theme C
  <<a8.  a,8>> <<a16 a'16>> <<a,8. e'>>  <<a,16 e'>> <<a,16 a'16>> <<a,16 e'>> <<a8 a,>> |
  <<a'8. a,8>> <<a16 a'16>> <<a,8. e'>>  <<a,16 e'>> <<a,16 a'16>> <<a,16 e'>> <<a8 a,>> |
  <<g8. g'8>>  <<g16 g,>>   <<g8. d'8.>> <<g,16 d'>> <<g16 g,>>    <<g16 d'>> <<g8 g,>>  |
  <<g8. g'8>>  <<g16 g,>>   <<g8. d'8.>> <<g,16 d'>> <<g16 g,>>    <<g16 d'>> <<g8 g,>>  |
  <<a4. c e a>> <<e,8 a e'>> <<a,4 c e a>>  |
  <<a8 a,>> <<e8 e'>> <<a8 a,>> <<e8 e'>> <<a8 a,>>  <<e8 e'>> | 
  a8 g f e4. | <<a,8 f' d'>> <<c4 a c,>>  <<c8 e a>> <<c,4 e a>> 
  \bar "|."
}

\score {
  <<
    \new Staff  \with {
        instrumentName = "Flute"
        shortInstrumentName = "F"
      } \flute
    \new PianoStaff \with { 
      instrumentName = "Harp" 
      shortInstrumentName = "H"
    }
    <<
      \new Staff = "upper" \upperHarp
      \new Staff = "lower" \lowerHarp
    >>
  >>
  \layout {}
  \midi {}
}