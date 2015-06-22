#(set-default-paper-size "a4")
#(set-global-staff-size 18)

\version "2.18.2"

\header {
    title = "Soli Deo Gloria"
    subtitle = "Ézsaiás 42:8"
    composer = "Paul Kickstat"
    tagline=""
    % tagline = "Kottát szedte / Edited by: Griechisch Erika"
}

global = {
  \time 4/4  
}

womenMusic = \relative c'' 
{ \clef "treble"
  c8.^\markup{ \rounded-box "1"} g16 g4 a8. g16 g4| c8 d e c d8. g,16 g4 | c16 \( b c d e d c b a g f (e) d4| g4\) d e \breathe  c'8 g|
  e8^\markup{ \rounded-box "2"}  e g c, f4 e | e8 f g a b8. g16 g4 | g8 a16 b16 c8 c8 c8 \( d16 e f e d c | b4 b \) c \breathe  e,16 (f) e (d)|
  c8^\markup{ \rounded-box "3"}  c e c a (b) c4| c8 c c f d8. c16 b4 | c8. c16 c4 f16 (g) a8 a4 | d,4 g4 g2 \bar ":|."\break 
  \clef "bass"
  \bar  ".|:" c,2.^\markup{ Férfikar }  c4 | a2 g | e (f g4) g,4 c2  \bar  ":|."
}

womenWords = \lyricmode {
  %Women lyrics
  Glo -- ri -- a, glo -- ri -- a so -- li De -- o glo -- ri -- a glo - - - - - - - - - ri -- a, glo -- ri -- a,  so -- li De -- o, 
  so -- li De -- o so -- li De -- o glo -- ri -- a, so -- li - De -- o glo - - - - - - - ri -- a, so -- li De -- o, 
  so -- li De -- o, so -- li De -- o glo -- ri -- a glo -- ri -- a glo -- ri -- a glo -- ri -- a
  % Men lyrics
  So -- li De -- o glo -- ri -- a!
}



\score {
  <<
    \new ChoirStaff <<
      \new Staff = "Women" <<
        \new Voice = "Women" {
          \global
          \womenMusic
        }
      >>
      \new Lyrics \lyricsto "Women" {
        \womenWords
      }
    >>
  >>
}

