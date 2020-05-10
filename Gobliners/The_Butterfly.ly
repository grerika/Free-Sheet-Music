#(set-default-paper-size "a4" 'portrait)
%#(set-global-staff-size 16.5)

\version "2.18"
\header {
  title = "The Butterfly"
  subtitle = "Slip Jig"
  composer = "Traditional Irish"
  arranger = "Arrangement: Dominig Bauchaud"
  enteredby = "grerika @ github"
  tagline = "Last update: 04/25/2020 (Gobliners)"
}

global = {
  \key g \major
  \time 9/8
  \tempo 4. = 116
}

recorder = \relative c'' {
  \global
    | 
      b4^\markup{Theme A} e,8 g4 e8 fis4.
    | 
      b4 e,8 g4 e8 fis e  d
    | 
      b'4  e,8 g4 e8 fis4.
    |
      b4   d8  d4 b8  a8 fis8  d8
   \bar ":|.|:" \break
    | 
        b'4^\markup{Theme B}  c8  e4   fis8   g4.
    |         
        b,4  c8  g'4   e8    d  b a
    | 
        b4   c8  e4   fis8   g4 a8 
    |           
        b4   a8  g4    e8    d b
        a
   \bar ":|.|:"  \break
    | 
        b4.^\markup{Theme C}    b4  a8  g4    a8
    |
        b4.   b8 a  b  d  b  a
    | 
        b4.  b4  a8  g4  a8
    | 
        b4  d8  g4  e8  d  b
        a
  \bar ":|."
}


harp =  \relative c {
  \clef bass
  \global
   | <<e2. e,>> r4.
   | <<d2. d'>> r4.
   | <<e2. e,>> r4.
   | <<c2. c'>> r4.
  \bar ":|.|:"
    | <<a4 a' >> <<a8 e' ~>> <<e4. a,>> r
    | <<g2. g,2>> r4.
    | <<a4 a' e>> <<a8 e' ~>> <<e4 a,>> <<c8 g' ~>> <<g4. c,>>
    | r4.^\markup{this part was missing from the original score :)} r4. r4.
\bar ":|.|:"
    | g8 d'4 ~ d4. r4.
    | fis,8 d'4 ~ d4. r4.
    | <<e,2. d'2.>> r4.
    | <<e2. c,2.>> r4.
\bar ":|."
}

<<
  \new Staff  \with {
      instrumentName = "Flute"
      %shortInstrumentName = "F"
    } \recorder
  \new Staff  \with {
      instrumentName = "Harp"
      %shortInstrumentName = "H"
    } \harp 
>>

