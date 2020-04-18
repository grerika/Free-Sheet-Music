#(set-default-paper-size "a4" 'portrait)
#(set-global-staff-size 18)

\version "2.16.2"
\header {
  title = "Menuet en sol mineur"
  composer = "Jean Jacques ROUSSEAU (1713-1776)"
  %arranger  = ""
  enteredby = "grerika @ github"
  lastupdated = "04/18/2020"
  tagline = ""  
}

global = {
  \key g \minor
  \time 3/4
  \tempo 4 = 104
}


voice = \relative c'{
  \global
  \dynamicUp
    % Line 1
     <<bes'4 d>> <<bes8 d>> <<c es>> <<bes4 d>> 
       | r4  <<bes8 d>> <<c es>> <<bes4 d>>
       |  <<a4 c>> <<g bes>> <<fis a>>
       |  bes8^\markup{"1"} _\>  a^\markup{"2"} bes^\markup{"1"} a^\markup{"2"} g4^\markup{"3"} \!
       \bar "||"
    % Line 2
    <<bes4 d>> <<bes8 d>> <<c es>> <<bes4 d>> 
       | r4  <<bes8 d>> <<c es>> <<bes4 d>>
       |  <<a4 c>> <<g bes>> <<fis a>>
       | g2. 
       \bar "||"
       \break
   % Line 3
     <<bes4 d>> <<bes8 d>> <<c es>> <<bes4 d>> 
       | r4  <<bes8 d>> <<c es>> <<bes4 d>>
       |  <<a4 c>> <<g bes>> <<fis a>>
       | bes8 a bes a g4 
       \bar "||"
       \break
    % Line 4
    <<bes4 d>> <<bes8 d>> <<c es>> <<bes4 d>> 
       | r4  <<bes8 d>> <<c es>> <<bes4 d>>
       |  <<a4 c>> <<g bes>> <<fis a>>
       | g2. \fermata
       \bar "||"
       \break
    % Line 5
    bes4^\markup{"2"} bes8^\markup{"2"} c^\markup{"1"} bes4^\markup{"2"}
       | r4  a8 bes a4 
       | r4  g8 a g4
       | g8^\markup{"1"} fis^\markup{"2"} a^\markup{"1"} fis^\markup{"2"} d4^\markup{"3"}
       \bar "||"
       \break
    % Line 6
     r4 bes'8_\< c bes4 \!
       | r4  a8 bes a4 
       | r4  g8 a g4
       | g2_\> fis4^\markup{"Rit."} \!
       \bar "||" 
       \break
    % Line 7
    <<bes4^\markup{"a Tempo"} d>> <<bes8 d>> <<c es>> <<bes4 d>> 
       | r4  <<bes8 d>> <<c es>> <<bes4 d>>
       |  <<a4 c>> <<g bes>> <<fis a>>
       | bes8 a bes a g4 
       \bar "||"
   % Line 8
    <<bes4 d>> <<bes8 d>> <<c es>> <<bes4 d>> 
       | r4  <<bes8 d>> <<c es>> <<bes4 d>>
       |  <<a4^\markup{"Ritenuto"} c>> <<g bes>> <<fis_\> a>>
        g2. \!
       \bar "|."  
}

harp = {
  \clef bass
  \global
  % Line 1
  g4^\f r r | d'_\markup{1} bes_\markup{2}  g_\markup{3}  
    | c'_\markup{2}  d'_\markup{1}  d_\markup{4}  | g2_\markup{2}  bes4_\markup{1} 
  \break
  % Line 2
  g4_\markup{2}  r r | d' bes g | c'^\f_\markup{2}  d' d | g_\markup{3}  bes_\markup{2}  d'_\markup{1} 
  \break
  %Line 3 
  g4^\p r r |  d' bes g | c'_\markup{2} d' d | g2 bes4
  \break
  %Line 4
  g4^\p r r |  d' bes g | c'^\f_\markup{2}  d' d | g4 \fermata d' bes
  \break
  %Line 5
  <<g2. d'>> | <<f d'>> | <<es  c'>> | <<d d'>>
  \break
  % Line 6
  <<g4 bes d'>> <<g4 bes d'>> <<g4 bes d'>>
    | << f a d'>>  << f a d'>>  << f a d'>>
    | << es g c' >> << es g c' >> << es g c' >>
    | << d2. a d'>>
    \break
  %Line 7
  g4^\p r r |  d' bes g | c' d' d | g2 bes4
  \break
  % Linw 8
  g4 r r |  d' bes g |  c'^\f d' d | <<g2.bes>>
  \bar "|."
}


<<
  \new Staff 
    \with {
      instrumentName = "Flute"
      %shortInstrumentName = "Fl"
    } \voice
  \new Staff  \with {
      instrumentName = "Celtic harp"
    %  shortInstrumentName = "H"
    } \harp
>>