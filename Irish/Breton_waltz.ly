#(set-default-paper-size "a5" 'landscape)
#(set-global-staff-size 19)

\version "2.16.2"
\header {
  title = "Breton keringő"
  arranger = "Traditional Breton"
 enteredby = "grerika @ github"
  lastupdated = "11/28/2019"
   %tagline = "Gobliners"  
   tagline = ""
}

global = {
  \key d \minor
  \time 6/8
  \tempo 4. = 75
}

flute = \relative c'' {
  \global
    | a8-1 a16-1 g-2 f-3 g-2 a8-1 f-2 d-3
    | g8 g16 f e f g8 e c 
    | a'8 a16 g f g a8 f d 
    | g8-1 e-2 c-3 d4.-2 
   \bar ":|.|:"
    | d8-4 f-3 g-2 <<a4. e c-1>>
    | c8 e f <<g4. d bes>>
   % |  \grace a'8 g8-1 f-2 e-3 d4-4 f8-1 
    |  \acciaccatura a'8-1 g8-1 f-2 e-3 d4-4 f8-1 
    | e4-2 c8-3 d4.-1
   \bar ":|."  
  
}

harp =  \relative c {
  \clef bass
  \global
   | <<d4. f a>> <<d,4. f a>>
   | <<c, e g>> <<c, e g>> 
   | <<d4. f a>> <<d,4. f a>>
   | <<c, e g>> <<d f a>> 
   \bar ":|.|:"
    |  r4. <<a,4.-3-1 e' a>>
    | r4. <<g,4. d' g>>
    | r4. <<d,4. a' d>>
    | r4. <<d,4. a' d f a>>
  \bar ":|."
}

<<
  \new Staff \flute
  \new Staff \harp 
>>

