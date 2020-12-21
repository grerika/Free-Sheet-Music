#(set-default-paper-size "a4" 'portrait)
%#(set-global-staff-size 22)

\header {
  title = "Karácsonyi dalok"
  tagline = "Utoljára frissítve: 2020. december 21."
}

CsendesEj = \relative c'' {
  \key d \major
  \time 3/4
   d4. a8 fis4 | a4. g8 e4  | fis2.\fermata | \break
  a4. (b8) a4 fis2. | a4. b8 a4 fis2. |
  e'4. (dis8) e4 cis2. | d4. (cis8) d4 a2. \break
  b2 b4 d4. cis8 b4 | a4. b8 a4 | fis2. | \break
  b2 b4 | d4. cis8 b4 | a4. b8 a4 | fis2. | \break
  cis'2 cis4 | e4. d8 cis4 | d2. (fis2.) |
  d4. (a8) fis4 | a4. g8 e4 | d2. (d2) r4
  \bar "|."
}

CsendesEjVersszakElso = \lyricmode {
  _ _ _ _ _ _ _
  Csen -- des éj! Szent -- sé -- ges éj!
  Mi -- nde -- nek ál -- ma mély;
  Nincs más fent, csak a Szent szü -- le -- pár,
  Drá -- ga kis -- de -- dük ál -- ma -- i -- nál,
  Szent Fi -- ú, a -- lud -- jál
  szent Fi -- ú, a -- lud -- jál!
}

CsendesEjVersszakMasodik = \lyricmode {
  _ _ _ _ _ _ _
  Csen -- des éj! Szent -- sé -- ges éj!
  An -- gya -- lok hang -- ja kél;
  Halld a meny -- nye -- i hal -- le -- lu -- ját,
  Szer -- te zen -- gi a drá -- ga sza -- vát,
  Krisz -- tus meg -- sza -- ba -- dít,
  Krisz -- tus meg -- sza -- ba -- dít!
}

CsendesEjVersszakHarmadik = \lyricmode {
  _ _ _ _ _ _ _
  Csen -- des éj! Szent -- sé -- ges éj!
  Szív ö -- rülj, higgy, re -- mélj!
  Is -- ten Szent Fi -- a hin -- ti re -- ád,
  Aj -- ka vi -- gaszt a -- dó mo -- so -- lyát,
  Krisz -- tus meg -- szü -- le -- tett,
  Krisz -- tus meg -- szü -- le -- tett!
}

\score {
  \header { piece = "Csendes éj" }
  <<
      \CsendesEj
      \addlyrics { \set stanza = #" " \CsendesEjVersszakElso}
      \addlyrics { \set stanza = #" " \CsendesEjVersszakMasodik}
      \addlyrics { \set stanza = #" " \CsendesEjVersszakHarmadik}
  >>
  \layout {}
  \midi {}
}

Dicsoseg = \relative c' {
    \bar ".|:"
      c4 a' g2 | e8 g f e d4 c 
    \bar ":|." 
      e8 g g g d f e4 | e8 g g g d f e4 | 
      c4 a' g2 | c4 b c2 | e,4 d c2 
    \bar "|."      
}
  DicsosegElsoVersszak = \lyricmode {
      Di -- cső -- ség, menny -- ben az Is -- ten -- nek!
      Az an -- gya -- li se -- re -- gek
      ví -- gan így é -- ne kel -- nek:
      Di -- cső -- ség, di -- cső -- ség, Is -- ten -nek!
  }
  
  DicsosegMasodikVersszak = \lyricmode {
      Bé -- kes -- ség, föl -- dön az em -- ber -- nek!
      Kit az i -- gaz sze -- re -- tet
      kis Jé -- zus -- hoz el -- ve -- zet,
      Bé -- kes -- ség, bé -- kes -- ség em -- ber -- nek!
  }


\score {
  \header { piece = "Dicsőség" }
  <<
      \Dicsoseg
      \addlyrics { \set stanza = #"1. " \DicsosegElsoVersszak}
      \addlyrics { \set stanza = #"2. " \DicsosegMasodikVersszak}
  >>
  \layout {}
  \midi {}
}

\pageBreak



FelNagyOromre = \relative c' {
  \key a \major 
  \time 4/4
  \bar ".|:"
     e4 cis8 e8 a4 b | cis4 gis8 b8 a2 | a4 b8 fis8 b4 a4 | gis4 fis8 fis8 e2
  \bar ":|."
     e4 e8 e8 fis4 fis4 gis4 gis8 fis8 e2 | e4 cis8 e8 cis'4 a4 | b4 fis8 gis8 a2 
  \bar "|."
}
  
  FelNagyOromreElsoVersszak = \lyricmode {
   Fel nagy ö -- röm -- re! Ma szü -- le -- tett, 
   a -- ki u -- tán a föld e -- pe -- dett.
   Egy -- sze -- rű pász -- tor jöjj kö -- ze -- lebb,
   nézd a te é -- des Is -- te -- ne -- det.
  }
  
  
  FelNagyOromreElsoVersszakMasodikSor = \lyricmode {
    Má -- ri -- a kar -- ján é -- gi a fény
    Is -- te -- ni Kis -- ded Szűz -- nek ö -- lén.
  }
  
  FelNagyOromreMasodikVersszak = \lyricmode {
      Nem ra -- gyo -- gó fény közt nyu -- go -- szik,
      Bár -- so -- nyos á -- gya nincs ne -- ki itt.
      Egy -- sze -- rű pász -- tor tér -- de -- den állj! 
      Mert ez az égi s föl -- di ki -- rály.
  }
  FelNagyOromreMasodikVersszakMasodikSor = \lyricmode {
      Csa ez a szal -- ma, kol -- du -- si hely.
      Rá me -- le -- get a mar -- ha le -- gel.
  }
  
  
\score {
  \header { piece = "Fel nagy örömre" }
  <<
     %\new ChordNames {
     %   \set noChordSymbol = "" 
     %   \set chordChanges = ##t
     %   \harmoniesFelNagyOromre
     % }
      \FelNagyOromre      
      \addlyrics { \set stanza = #"1. " \FelNagyOromreElsoVersszak}
      \addlyrics { \set stanza = #" " \FelNagyOromreElsoVersszakMasodikSor}
      \addlyrics { \set stanza = #"2. " \FelNagyOromreMasodikVersszak}
      \addlyrics { \set stanza = #" " \FelNagyOromreMasodikVersszakMasodikSor} 
  >>
  \layout {}
  \midi {}
}


HullAPelyhes = \relative c' {
  \key g \major 
  \time 2/4
   \bar ".|:" 
      d8 d a' a b b a4 | g8 g fis fis e e d4
   \bar ":|." \break
      a'8 a g g fis fis e4 a8 a g g fis fis e4 
      d8 d a' a b b a4 | g8 g fis fis e e d4
  \bar "|."
}
  
  HullAPelyhesSzoveg = \lyricmode {
   Hull a pely -- hes fe -- hér hó,
   jöjj el ked -- ves Tél -- a -- pó!
   Van zsá -- kod -- ban min -- den jó,
   pi -- ros al -- ma mo -- gyo -- ró,
   Jöjj el hoz -- zánk vá -- runk rád,
   ked -- ves ö -- reg Tél -- a -- pó.
  }
  
  
  HullAPelyhesSzovegMasodikSor = \lyricmode {
    Min -- den gyer -- mek vár -- va vár,
    vi -- dám é -- nek hang -- ja száll.
  }
  

\score {
  \header { piece = "Hull a pelyhes fehér hó" }
  <<
      \HullAPelyhes
      \addlyrics { \set stanza = #" " \HullAPelyhesSzoveg}
      \addlyrics { \set stanza = #" " \HullAPelyhesSzovegMasodikSor}
  >>
  \layout {}
  \midi {}
}




KisKaracsonyNagyKaracsony = \relative c'' {
  \key g \major 
  \time 3/4
  g8 d g4 b | a8 g a4 a4 | g8 d g4 b | a8 g a4 a4 |
  b8 c d4 g, | c8 b a4 a4 | b8 c d4 g, | b8 a8 g4 g4
  \bar "|."
}

  KisKaracsonyNagyKaracsonyElsoVersszak = \lyricmode {
    Kis ka -- rá -- csony, nagy ka -- rá -- csony,
    ki -- sült -- e már a ka -- lá -- csom?
    Ha ki -- sült már i -- de vé -- le 
    hadd e -- gyem meg me -- le -- gé -- ben.
  }
  
   KisKaracsonyNagyKaracsonyMasodikVersszak = \lyricmode {
    Jaj, de szép a ka -- rá -- csony -- fa,
    ra -- gyog raj -- ta a sok gyer -- tya.
    Itt egy szép könyv, ott egy lab -- da,
    jaj de szép a ka -- rá -- csony -- fa!
  }
 

\score {
  \header { piece = "Kis karácsony, nagy karácsony" }
  <<
      \KisKaracsonyNagyKaracsony
      \addlyrics { \set stanza = #"1. " \KisKaracsonyNagyKaracsonyElsoVersszak}
      \addlyrics { \set stanza = #"2. " \KisKaracsonyNagyKaracsonyMasodikVersszak}
  >>
  \layout {}
  \midi {}
}

MennybolAzAngyal = \relative c' {
    \key f \major
    \time 4/4
    f4 f8 e f4 c | a'4 a8 g8 a4 f | a4 d4 c2 | a4 d4 c2 |
    c4 c8 d c4 a | bes4 bes8 c bes4 g | a4 g f2  | a4 g f2  
    \bar "|."
}

MennybolAzAngyalVersszakElso = \lyricmode {
    Menny -- ből az an -- gyal le -- jött hoz -- zá -- tok,
    pász -- to -- rok, pász -- to -- rok!
    Hogy Bet -- le -- hem -- be si -- et -- ve men -- vén,
    lás -- sá -- tok, lás -- sá -- tok.
}

MennybolAzAngyalVersszakMasodik = \lyricmode {
    Is -- ten -- nek fi -- a, a -- ki szü -- le -- tett
    já -- szol -- ban, já -- szol -- ban,
    Ő le -- szen nék -- tek üd -- vö -- zí -- tő -- tök
    va -- ló -- ban, va -- ló -- ban.
}  

MennybolAzAngyalVersszakHarmadik = \lyricmode {
  Mel -- let -- te va -- gyon az é -- des -- any -- ja,
  Má -- ri -- a, Má -- ri -- a.
  Bar -- mok közt fek -- szik, já -- szol -- ban nyug -- szik
  szent fi -- a, szent fi -- a.
}    

MennybolAzAngyalVersszakNegyedik = \lyricmode {
    El is me -- né -- nek kö -- szön -- té -- sé -- re
    a -- zon -- nal, a -- zon -- nal,
    Szép a -- ján -- dék -- ot vi -- vén szí -- vük -- ben
    ma -- guk -- kal, ma -- guk -- kal.
}

\score {
  \header { piece = "Mennyből az angyal" }
  <<
      \MennybolAzAngyal
      \addlyrics { \set stanza = #"1. " \MennybolAzAngyalVersszakElso}
      \addlyrics { \set stanza = #"2. " \MennybolAzAngyalVersszakMasodik}
      \addlyrics { \set stanza = #"3. " \MennybolAzAngyalVersszakHarmadik}
      \addlyrics { \set stanza = #"4. " \MennybolAzAngyalVersszakNegyedik}
  >>
  \layout {}
  \midi {}
}


PasztorokPasztorok = \relative c' {
    c4 e8 g c,4 e8 g | f8 e d4 c2 | 
    g'4 b8 d g,4 b8 d | c8 b a4 g2 |
    c4 b8 a g4 f8 e  | g8 f e4 d2 | 
    c4 e8 g c,4 e8 g | f8 e d4 c2 
    \bar "|."
}

PasztorokPasztorokVersszakElso = \lyricmode {
    Pász -- to -- rok, pász -- to -- rok ör -- ven -- dez -- ve
    si -- et -- nek Jé -- zus -- hoz Bet -- le -- hem -- be.
    Kö -- szön -- tést mon -- da -- nak a kis -- ded -- nek,
    ki -- vált -- sá -- got ho -- zott az em -- ber -- nek.
}

PasztorokPasztorokVersszakMasodik = \lyricmode {
  An -- gya -- lok szó -- za -- ta min -- ket is hív. 
  Ért -- se meg ezt te -- hát min -- de hű szív;
  A kis -- ded Jé -- zus -- kát mi is áld -- juk, 
  Mint a hív pász -- to -- rok, ma -- gasz -- tal -- juk.
}

PasztorokPasztorokVersszakHarmadik = \lyricmode {
  Üd -- vöz -- légy, kis Jé -- zus, re -- mény -- sé -- günk,
  a -- ki a vált -- sá -- got hoz -- tad né -- künk,
  meg -- hoz -- tad az i -- gaz -- ság vi -- lá -- gát,
  meg -- nyi -- tád Szent -- a -- tyád menny -- or -- szá -- gát.
}

PasztorokPasztorokVersszakNegyedik = \lyricmode {
  Di -- cső -- ség, i -- má -- dás az A -- tyá -- nak,
  é -- ret -- tünk szü -- le -- tett szent Fi -- á -- nak,
  és a vi -- gasz -- ta -- ló Szent -- lé -- lek -- nek:
  Szent -- há -- rom -- ság -- ban az egy Is -- ten -- nek!
}


\score {
  \header { piece = "Pásztorok, pásztorok" }
  <<
      \PasztorokPasztorok
      \addlyrics { \set stanza = #"1. " \PasztorokPasztorokVersszakElso}
      \addlyrics { \set stanza = #"2. " \PasztorokPasztorokVersszakMasodik}
      \addlyrics { \set stanza = #"3. " \PasztorokPasztorokVersszakHarmadik}
      \addlyrics { \set stanza = #"4. " \PasztorokPasztorokVersszakNegyedik}
  >>
  \layout {}
  \midi {}
}
OGyonyoruszep = \relative c' {
  \key d \major
  \bar ".|:" 
    d4 fis8 g a4 b | a8 a g g fis4 r4    
  \bar ":|."
    fis8 fis8 e e a a g4 | fis8 fis e e a a g4 | 
    fis8 fis8 e e d4 d4
  \bar "|."    
}

OGyonyoruszepVersszakElso = \lyricmode { 
   Ó, gyö -- nyö -- rű -- szép ti -- tok -- za -- tos éj
   Kis -- ded -- ként az é -- des Úr já -- szo -- lá -- ban
   meg -- si -- mul szent ka -- rá -- csony éj -- jel! 
}

OGyonyoruszepVersszakElsoSorMasodik = \lyricmode { 
   Ég -- sze -- mű gyer -- mek, csöpp ró -- zsa -- le -- vél
}

OGyonyoruszepVersszakMasodik = \lyricmode {
  Ó, fogy -- ha -- tat -- lan, cso -- dá -- la -- tos ér!
  Ben -- ne lásd az é -- des Úr
  Té -- ged szom -- jaz rá -- bo -- rul,
  egy vi -- lág -- gal ér fel!
}

OGyonyoruszepVersszakMasodikSorMasodik = \lyricmode {
  Hó -- pe -- hely os -- tya, csöpp bú -- za -- ke -- nyér
}

\score {
  \header { piece = "Ó gyönyörűszép" }
  <<
      \OGyonyoruszep
      \addlyrics { \set stanza = #"1. " \OGyonyoruszepVersszakElso}
      \addlyrics { \set stanza = #" "   \OGyonyoruszepVersszakElsoSorMasodik}
      \addlyrics { \set stanza = #"2. " \OGyonyoruszepVersszakMasodik}
      \addlyrics { \set stanza = #"   " \OGyonyoruszepVersszakMasodikSorMasodik}

  >>
  \layout {}
  \midi {}
}


chords = \chordmode {
}
