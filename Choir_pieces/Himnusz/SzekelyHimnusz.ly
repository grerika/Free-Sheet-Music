#(set-default-paper-size "a4" 'landscape)

\header {
  title = "Székely Himnusz"
  composer = "Zene: Mihalik Kálmán"
 tagline = ""
}

\relative b' {
  %\repeat volta 2 {
    %\tempo "Maestoso" 4 = 84
  \time 4/4
  \key bes \major 
  r4 f d f
  g2 g2
  f4 f d f
  bes2 bes
  r4 f bes c
  d2 d2
  es4 c bes a 
  bes2 r2
  \break
  r4 f d f
  g2 g2
  f4 f d f
  bes2 bes
  r4 f bes c
  d2 d2
  es4 c bes a 
  bes2 r2
  \break
  r4 d, d d 
  g2 g2 
  bes4 bes a g
  d2 d2
  r4 d d d 
  g2 g
  f4 g f4. es8 
  es2 r2
  \break
  r4 f d f
  g2 g
  f4 f d f 
  bes2 bes2
  r4 f bes c
  d2 d2
  es4 c bes a
  bes2 r2

   \bar "|."
}

\addlyrics {
  Ki tud -- ja mer -- re, mer -- re visz a vég -- zet:
  gö -- rön -- gyös ú -- ton
  Sö -- tét éj -- je -- len
  %
  Ve -- zesd még egy -- szer győ -- ze -- lem -- re né -- ped
  Csa -- ba ki -- rály -- fi, csil -- lag -- ös -- vé -- nyen.
  %
  Ma -- rok --  nyi szé -- kely por -- lik, mint a szik -- la
  né -- pek har -- cá -- nak zaj -- ló ten -- ge -- rén.
  %
  Fe -- jünk az ár jaj, száz -- szor el -- bo -- rít -- ja,
  ne hagyd el -- vesz -- ni Er -- délyt Is -- te -- nünk.
  %
  A -- med -- dig é -- lünk 
}


\markup {
  \fill-line {
    
    %\hspace #0.1 % moves the column off the left margin;
        % can be removed if space on the page is tight
     \column {
       \line { "2."
	\column{
	"Ameddig élünk, magyar ajkú népek,"
	"Megtörni lelkünk nem lehet soha;"
        "Szülessünk bárhol, földünk bármely pontján"
        "Legyen a sorsunk jó vagy mostoha:"
	"Keserves múltunk - évezredes balsor,"
	"Tatár s török dúlt, labanc rabigált"
	"Jussunk e honban, magyar-székelyföldön,"
	"Szabad hazában élni boldogan"
        \hspace #1.0 % (Basically inserts a blank line; the argument is irrelevant)
	  }
	}
      }
  }
}