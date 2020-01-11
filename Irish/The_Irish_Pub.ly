#(set-default-paper-size "a4" 'portrait)
#(set-global-staff-size 26)

\version "2.16.2"
\header {
  title = "The Irish Pub"
  arranger = "Traditional Hornpipe"
 enteredby = "grerika @ github"
  lastupdated = "01/11/2020"
   tagline = ""  
}

global = {
  \key g \major
  \time 2/4
}

voice = \relative c' {
  \global
  \dynamicUp
  \partial 4
  
%\bar ".|:"
b'8. d16%^\markup{Intro}
    |  e8. d16 b8. a16 | g8. e16 fis8. d16 | e8. e16 e8. d16 
    | e4 g8. fis16 | e8. e16 e8. fis16 |
    | e8. d16 b8. d16 | g8. a16 b8. g16 | 
    | a4 b8. d16 | e8. d16 b8. a16 
    | g8. g16 fis8. e16 | d8. e16 d8. b16
    | d4 g8. fis16 | e8. e16 e8. fis16 | e8. d16 b8. d16
    | g8. a16 b8. g16 | a4 b8. d16 | e8. d16 b8. a16 
    | g8. e16 fis8. d16 e8. e16 e8. d16 
    | e4
  \bar "||"
    b'8. b16 | d8. d16 d8. e16 
    | d8. b16 b8 a | b8. d16 d8. e16
    | d4 b8 d | e8. d16 b8. a16
    | g8. g16 fis8. e16
    | d8. e16 d8. b16 
    | d4 g8. (fis16)
    | e8. e16 e8. fis16 | e8. d16 b8. d16 | g8. a16 b8. g16
    | a4 b8. d16 | e8. d16 b8. a16
    | g8. e16 fis8. d16
    | e8. e16 e8. d16 | e4 r4 
    \bar ":|."
}


verse = \lyricmode {
  % Lyrics follow here.
 (intro) _ _ _ _ _  _ _ _ _ _ _ _ _ _
 Well, you walk in -- to a ci -- ty street, you could be in Po -- ru
 and you hear a dis -- tant cal -- ling and you know it's meant for you,
 And you drop what you were do -- ing and you join the mer -- ry mob, and be -- fore 
 you know just where you are, you're in an I -- rish pub.
 They've got one in Ho -- no -- lu -- lu, they've got one in Mos -- cow too, 
 they got four of them in Syd -- ney and a couple in Kat -- man -- do.
 So whea -- ther you sing or pull a pint, you'll always have a job, 'cause where
 ever you go a -- round the world, you'll find an I -- rish pub!
}


\score {
  \new Staff { \voice }
  \addlyrics { \set stanza = #"1. " \verse }
  
  \layout { }
  \midi {
    \context {
      \voice
    }
    \tempo 2 = 90
  }
}


