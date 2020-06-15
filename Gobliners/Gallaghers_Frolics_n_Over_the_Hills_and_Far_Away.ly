#(set-default-paper-size "a4" 'portrait)
#(set-global-staff-size 18)

\version "2.18.2"
\header {
  title = "Gallagher's Frolics + Over the Hills and Far Away"
  enteredby = "grerika @ github"
  tagline = "Last update: 06/15/2020 (Gobliners)"
  %style = https://www.youtube.com/watch?v=6pld3E3l4uI
}

voltaAdLib = \markup {  \text \italic {  D.S. al Coda  } }

global = {
  \key e \minor
  \time 6/8
  %\tempo 4 = 180
}

% Source: https://thesession.org/tunes/160 first version
gallaghers = \relative c' {
  \key b \minor
  \time 6/8

  \dynamicUp
  %\partial 8 d8
  \repeat volta 2 {
    e4.\mordent g8 fis e | b'4.\mordent d8 b a | b d b b a b g b g a fis d |
    e4.\mordent g8 fis e | b' a b d b a b a g fis a fis
  }
  \alternative {
    { g e e e4 d8 }
    { g e e e4 e'8 }
  }
  \break
  \repeat volta 2 {
    e4 fis8 g fis e | g4 a8 b g e | d cis d fis e d | fis a d, fis e d |
    e4 fis8 g fis e | d fis e d b a | b a g fis a fis
  }
  \alternative {
     { g8 e e e4 e'8 }
     { g,8 e e e4 d8 }
  }
  %ˇ\bar "|."
}


harmoniesGallaghers = \chordmode {
    % Part A
    e4.:m e:m | e:m d | e:m e:m | g d
    e:m e:m | e:m d | e:m d   | e:m r | e:m e:m
    % Part B
    e:m e:m | e:m g | d d | d b:m
    e:m e:m | d d   | e:m d | e:m r | e:m
}

overTheHills = \relative c'{
  \global
      \partial 4 e8 fis  |
      \repeat volta 2 {
        g%\mark \markup \small { \musicglyph #"scripts.segno" }
          e e a e e      |
        b' e, e c' b a |
        b e, e e d e   |
        fis a g fis e fis |
        g e e a e e |
        b' e, e c' a b |
        c a g a b c |
      }
      \alternative {
        {d c b a g fis }
        {d' c b a g a}
      }
     \break
      \repeat volta 2 {
        b r e e4 fis8 |
        e8 d b a g a |
        b r e e4 fis8 |
        e d b d4. |
        b8 r e e4 fis8 |
        g fis e fis e d|
      }
      \alternative {
           {e d b a g a   | b e, e e4 r8 }
           {e' d b d b a  |  b a g a g fis }
      }
      \break
      \repeat volta 2 {
        g e e a e e | b' e, e c' b a | b e, e e d e |
        fis a g fis e fis |% \break
        g e e a e e | b' e, e c' a b | c a g a b c |
      }
      \alternative {
         { d c b a g fis }
         { d' c b a g a }
      }
      \break
      \repeat volta 2 {
         b8 r e8 e4 fis8 | e d b a g a | b r e e4 fis8 e d b d4. |
         b8 r e8 e4 fis8 | g fis e fis e d |
      }
      \alternative {
        {e d b a g a | b e, e e4 r8 }
        {e' d b d b a | b a g a g fis
          \mark \markup \small { \musicglyph #"scripts.coda" "" }
        }
      }
      \break
      \bar ".|:"
        \repeat volta 2 {
         e e e g fis e | b' a b d b a
        }
       \alternative{
         { b b b b a b | g a b a fis d }
         { b' a g fis16 g a8 fis g e e e4.  }
        }
      \bar ":|.|:"
      \break
      \repeat volta 2 {
       e'4 fis8 g fis e|  g4 a8 b a g | d4 e8 fis e d | a' fis d fis e d |
       e4 fis8 g fis e | d fis e d b a | b a g fis16 g a8 fis
      }
      \alternative {
        %\set Score.repeatCommands = #(list (list 'volta voltaAdLib) )
         { e' b e d g fis }
         { g,^\markup { \small \italic "D.S. al Coda"} e e e e fis }
     }
    \bar ":|."
     \mark \markup \small { \musicglyph #"scripts.coda" "" } e2.   (e) (e) (e)
     \bar "|."
}


harmoniesOverTheHills =  \chordmode {

}


\score {
 % \header { piece = "Gallagher's Frolics" }
  <<
      \new ChordNames {
        \set noChordSymbol = ""
        \set chordChanges = ##t
        \harmoniesGallaghers
      }
       \gallaghers
  >>

 % \layout { }
 % \midi { }
}


\score {
  %\header { piece = "Over the Hills and Far Away" }
  <<
      \new ChordNames {
        \set noChordSymbol = ""
        \set chordChanges = ##t
        \harmoniesOverTheHills
      }
       \overTheHills
  >>

  \layout { }
  \midi { }
}
