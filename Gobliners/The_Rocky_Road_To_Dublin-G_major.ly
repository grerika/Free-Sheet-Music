\include "default-settings.ly"

\header {
  title = "The Rocky Road To Dublin"
  composer = "Tradicionális ír dallam (slip jig)"
  tagline = "Utoljára frissítve: 2021. augusztus 15."
}

global = {
  \key c \major
  \time 9/8
    %\tempo 4 = 125
}

voice = \relative c'' 
  \transpose c g'
  {
  \global
  \dynamicUp
  \partial 8 a8
  \bar ".|:"
  | a4 a8 g4 e8 d d d | a,4 d8 d4 e8 f4 g8 |
  a4 a8 g4 e8 d4.   | f8 (e8) c8 c4 d8 e f g
  \bar ":|."
  \break
  a8 a4 d'8 d'4 b8 c'4 | a4 d'8 d'4 b8 c'4. | 
  a4 d'8 d'4 b8 c' a4. | g4 e8 c8 d8 e f (g) |
  %
  a4 d'8 d'4 b8 c'4. | a4 d'8 d'4 b8 c'4. | 
  a8 a d'8 d'4 b8 c'4  a8 | g4 e8 c4 d8 e f g |
  %
  \bar "||"
  \break
  a4^\markup{ Refrén } a8 g4 e8 d4. | a,4 d8 d4 e8 f4 g8 |
  a4 a8 g4 e8 d4 (f8)   | e4 c8 c4 d8 e f g |
  %
  a4 a8 g4 e8 d4.
  %A2A G2E D3 | A,2D DDE F2G | AAA G2E D2F | E2C C2D EFG | AAA G2E D3 ||
  \bar "|."
}

harmonies = \chordmode {

}

verseFirst = \lyricmode {
  Well in the mer -- ry month of June, from me home I star -- ted
  Left the girls of Tuam near -- ly bro -- ken hear -- ted Sa
  Then off to reap the corn, leave where I was born
  Cut a stout black thorn to ba -- nish ghosts and gob -- lins
  Bought a pair of brogues ratt -- ling o'er the bogs
  And fright' -- ning all the dogs on the roc -- ky road to Dub -- lin
  %Refrain
  One, two, three, four, five,
  Hunt the Hare and turn her down the roc -- ky road
  All the way to Dub -- (o) -- lin, whack fol -- lol de raaah!
}

verseSecond = \lyricmode {
  _ lu -- ted fat -- her dear, _ _ kissed me dar -- ling mot -- her
  Drank a pint of beer, me grief and tears to smot -- her
}

\score {
    <<
     \new ChordNames {
        \set noChordSymbol = ""
        \set chordChanges = ##t
        \harmonies
      }
      \voice
      \addlyrics { \set stanza = #"1. " \verseFirst }
      \addlyrics { \set stanza = #" " \verseSecond }

    >>
  \layout { }
  \midi {
    \context {
      \voice
    }
    \tempo 2 = 90
  }
}


\markup \small {
  \fill-line {
    %\hspace #0.1 % moves the column off the left margin;
     % can be removed if space on the page is tight
     \column {
      \line { \bold "2."
        \column {
          "In Mullingar that night I rested limbs so weary"
          "Started by daylight next morning blithe and early"
          "Took a drop of pure to keep me heart from sinking"
          "That's a Paddy's cure whenever he's on drinking"
          "See the lassies smile, laughing all the while"
          "At me curious style, 'twould set your heart a bubblin'"
          "Asked me was I hired, wages I required"
          "I was almost tired of the rocky road to Dublin"
          \hspace #1
           "Refrén: One, two, three, four, five, ..."
        }
      }
      \combine \null \vspace #0.5 % adds vertical spacing between verses
      \line { \bold "3."
        \column {
            "In Dublin next arrived, I thought it such a pity"
            "To be soon deprived a view of that fine city"
            "So then I took a stroll, all among the quality"
            "Me bundle it was stole, all in a neat locality"
            "Something crossed me mind, when I looked behind"
            "No bundle could I find upon me stick a wobblin'"
            "Inquiring for the rogue, they said me Connaught brogue"
            "Wasn't much in vogue on the rocky road to Dublin"
            \hspace #1
            "Refrén: One, two, three, four, five, ..."
        }
      }
    }
    \column{
        \line { \bold "4."
         \column  {              
          "From there I got away, me spirits never falling"
          "Landed on the quay, just as the ship was sailing"
          "The Captain at me roared, said that no room had he"
          "When I jumped aboard, a cabin found for Paddy"
          "Down among the pigs, played some hearty rigs"
          "Danced some hearty jigs, the water round me bubbling"
          "When off Holyhead, I wished meself was dead"
          "Or better for instead on the rocky road to Dublin"          
           \hspace #1
           "Refrén: One, two, three, four, five, ..."
         }
      }
      \combine \null \vspace #0.5 % adds vertical spacing between verses
      \line { \bold "5."
        \column {
            "Well, the boys of Liverpool, when we safely landed"
            "Called meself a fool, I could no longer stand it"
            "Blood began to boil, temper I was losing"
            "Poor old Erin's Isle they began abusing"
            "„Hurrah me soul” says I, me Shillelagh I let fly"
            "Some Galway boys were nigh and saw I was a hobble in"
            "With a load „Hurray” joined in the affray"
            "We quietly cleared the way for the rocky road to Dublin"
            \hspace #1
            "Refrén: One, two, three, four, five, ..."
        }
      }
    }
  }
}
