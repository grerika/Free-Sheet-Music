\version "2.12.3"
#(set-global-staff-size 19.5)
%#(set-default-paper-size "a3" 'landscape)
\header {
	title = "Szózat"
	poet = "Vörösmarty Mihály"
	composer = "Zene: Erkel Ferenc"
	arranger ="Eredeti dallama es harmóniái nyomán kórusra átdolgozta: Bárdos Lajos"
	%tagline = ##f
	%instrument = "Vegyeskar"
}

\new StaffGroup { 
	<<
	  %SOPRAN
	\new Staff {
		\relative c' {
			\tempo "Andante"
			\set Staff.instrumentName = #"S"
			\key d \major
			\partial 4 
			r8. fis16 
			fis4 gis4 ais8. ais16 b8. b16 
			fis2. eis4
			d cis d4. eis8 
			fis2. r4
			fis4 fis gis8 r8 gis8 gis8
			a8. bis16 cis2 bis4
			a4. a8 gis4. cis8
			fis,2 r4 fis4
			d'8. cis16 b8. ais16 b4 cis
			fis,2 r4 fis'4
			eis d cis b
			ais2 r4 cis4
			d8. cis16 b8. ais16   b4 b4->
			e2. \breathe e4
			d4. b8 cis4. ais8
			b4 r r fis
			%
			fis4 gis4 ais8. ais16 b8. b16 
			fis2. eis4
			d cis d4. eis8 
			fis2 r4  fis4 
			fis4. fis8 gis4 gis4
			a8. bis16 cis2 bis4
			a4. a8 gis4. cis8
			| fis,2 r4 fis4
 			\repeat volta 2 { 
				d'8. cis16 b8. ais16 b4 cis
				fis,2 r4 fis'4
				eis d cis b
				ais2 r4 cis4
				d8. cis16 b8. ais16 b4 
				b4\>  e2. 
				\breathe   e4\! 
			}
			\alternative {
				{d4. b8 cis4. ais8 b4 r r fis}
				{\tempo "(poco allarg)"
				dis'4. b8 cis4. ais8      b2. r4}
			}
		}
	}
	
	\addlyrics {
		Ha -- zád -- nak ren -- dü -- let -- le -- nül,
		Légy hí -- ve ó ma -- gyar
		Böl -- csőd az, s_maj -- dan sí -- rod is, 
		Mely á -- pol, s_el -- ta -- kar
		%
		A nagy vi -- lá -- gon e kí -- vül
		Nin -- csen szá -- mod -- ra hely.
		Áld -- jon vagy ver -- jen sors ke -- ze,
		Itt él -- ned, hal -- nod kell.
		%
		2._Légy hí -- ve ren -- dü -- let -- le -- nül
		Ha -- zád -- nak, ó ma -- gyar!
		Ez él -- te -- tőd, s_ha el -- bu -- kál,
		Hant -- já -- val ez ta -- kar
		%
		A nagy vi -- lá -- gon e kí -- vül
		Nin -- csen szá -- mod -- ra hely.
		Áld -- jon vagy ver -- jen sors ke -- ze,
		Itt él -- ned, hal -- nod kell.
		%
		A 
		%
		él -- ned, hal -- nod kell.
	}
	
	% ALT
	\new Staff {
		\relative c' {
			\set Staff.instrumentName = #"A"
			\key d \major
			\partial 4 r8. fis16 
			d4 e4 cis8. cis16   d8. e16 
			d2. cis4
			b4 ais4 b4. cis8
			d2. r4
			cis4 cis8( fis8) eis8 r8 eis8 eis
			fis8. gis16 a2 fis4
			fis4. fis8 fis4( eis8) eis 
			cis2 r4 fis4 
			fis8. fis16 fis8. fis16 fis4 e4
			d2 r4 d'4
			cis b ais gis 
			fis2 r4 fis4
			fis8. fis16 fis8. fis16 fis4 a4
			g2. \breathe e4
			fis d e cis
			d r4 r4 fis
			%
			d4 e4 cis8. cis16   d8. e16 
			d2. cis4
			b4 ais4 b4. cis8
			d2 r4 fis4
			cis4( fis8) fis8 eis4 eis
			fis8. gis16 a2 fis4
			fis4. fis8 fis4( eis8) eis 
			| cis2 r4 fis4 
 			\repeat volta 2 {
				fis8. fis16 fis8. fis16 fis4 e4
				d2 r4 d'4
				cis b ais gis
				fis2 r4 fis4
				fis8. fis16 fis8. fis16 fis4 a4
				g2. \breathe  e4
			}
			\alternative {
				{fis d e cis d r4 r4 fis}
				{fis4 dis e cis dis2. r4}
			}
			\bar "|."
		}
	}
	
	\addlyrics {
		Ha -- zád -- nak ren -- dü -- let -- le -- nül,
		Légy hí -- ve ó ma -- gyar
		Böl -- csőd az, s_maj -- dan sí -- rod is, 
		Mely á -- pol, s_el -- ta -- kar
		%
		A nagy vi -- lá -- gon e kí -- vül
		Nin -- csen szá -- mod -- ra hely.
		Áld -- jon vagy ver -- jen sors ke -- ze,
		Itt él -- ned, hal -- nod kell.
		%
		2._Légy hí -- ve ren -- dü -- let -- le -- nül
		Ha -- zád -- nak, ó ma -- gyar!
		Ez él -- te -- tőd, s_ha el -- bu -- kál,
		Hant -- já -- val ez ta -- kar
		%
		A nagy vi -- lá -- gon e kí -- vül
		Nin -- csen szá -- mod -- ra hely.
		Áld -- jon vagy ver -- jen sors ke -- ze,
		Itt él -- ned, hal -- nod kell.
		%
		A 
		%
		él -- ned, hal -- nod kell.
	}
	
	%TENOR
	\new Staff {
		\relative c' {
			\set Staff.instrumentName = #"T"
			\clef treble 
			\key d \major
			\partial 4 r4
			r1
			fis8. fis16 fis8. fis16 fis4 eis4
			d4 cis d4. eis8
			fis2. r4
			fis4 fis gis8 r gis gis
			a8. bis16 cis2 d4
			cis4. cis8 b4. b8 
			ais2 r4 fis4
			b8. ais16 b8. fis16 gis4 ais
			b2 r4 fis'
			eis d cis b 
			cis2 r4 ais
			b8. ais16 b8. cis16 d4 b4
			b2. \breathe e4
			b4. b8 ais4. fis8
			fis4 r4 r2
			%
			r1
			| fis8. fis16 fis8. fis16 fis4 eis4
			| d4 cis d4. eis8
			| fis2 r4 fis4 
			| a4. a8 gis4 gis
			| a8. bis16 cis2  d4 \>
			| cis4.\! cis8 b4. b8 
			| ais2 r4 fis4
 			\repeat volta 2 {
 				| b8. ais16 b8. fis16 gis4 ais
				|b2 r4 fis'
				eis d cis b 
				cis2 r4 ais
				b8. ais16 b8. cis16 d4 b4
				b2. \breathe  e4
			}
			\alternative {
				{b4. b8 ais4. fis8 fis4 r4 r fis4}
				{b4. b8 ais4. fis8 fis2. r4}
			}
		}
	}
	\addlyrics {
		ren -- dü -- let -- le -- nül
		Légy hí -- ve ó ma -- gyar
		Böl -- csőd az, s_maj -- dan sí -- rod is, 
		Mely á -- pol, s_el -- ta -- kar
		%
		A nagy vi -- lá -- gon e kí -- vül
		Nin -- csen szá -- mod -- ra hely.
		Áld -- jon vagy ver -- jen sors ke -- ze,
		Itt él -- ned, hal -- nod kell.
		%
		ren -- dü -- let -- le -- nül
		Ha -- zád -- nak, ó ma -- gyar!
		Ez él -- te -- tőd, s_ha el -- bu -- kál,
		Hant -- já -- val ez ta -- kar
		%
		A nagy vi -- lá -- gon e kí -- vül
		Nin -- csen szá -- mod -- ra hely.
		Áld -- jon vagy ver -- jen sors ke -- ze,
		Itt él -- ned, hal -- nod kell.
		%
		A	 
		%
		él -- ned, hal -- nod kell.
	}
	% BASS
	\new Staff {
		\relative c' {
			\set Staff.instrumentName = #"B"
			\clef bass 
			\key d \major
			\partial 4 r4
			r1
			b,8. b16 b8. b16 b4 cis
			b4\< fis4 \! \>  b4. \! cis8
			d2. r4
			a4 a4 cis8 r8 cis8 cis8
			fis8. gis16 a2 gis4-> 
			cis4 cis, d( cis8) cis8
			fis2 r4 fis4
			b,8. cis16 d8. e16 d4 cis4
			d2 r4 d'4
			cis b ais gis  
			fis2 r4 fis4
			b,8. cis16 d8. e16 d4 g8 (fis8)
			e2. \breathe e4
			fis fis fis fis
			b,4 r4 r2
			%
			r1
			b8. b16 b8. b16 b4 cis
			b4\< fis4 \! \>  b4.\! cis8
			b2 r4 fis'4
			a4. fis8 cis4 cis
			fis8. gis16 a2 gis4
			cis4 cis, d( cis8) cis8
			| fis2 r4 fis4
 			\repeat volta 2 {
				b,8. cis16 d8. e16 d4 cis4
				d2 r4 d'4
				cis b ais gis  
				fis2 r4 fis4
				b,8. cis16 d8. e16 d4 g8( fis8)
				e2. \breathe  e4
			}
			\alternative {
				{fis fis fis fis b,4 r4 r fis'4}
				{fis4 fis fis fis b,2. r4}
			}
			\bar "|."
		}
	}
	
\addlyrics {
		ren -- dü -- let -- le -- nül
		Légy hí -- ve ó ma -- gyar
		Böl -- csőd az, s_maj -- dan sí -- rod is, 
		Mely á -- pol, s_el -- ta -- kar
		%
		A nagy vi -- lá -- gon e kí -- vül
		Nin -- csen szá -- mod -- ra hely.
		Áld -- jon vagy ver -- jen sors ke -- ze,
		Itt él -- ned, hal -- nod kell.
		%
		ren -- dü -- let -- le -- nül
		Ha -- zád -- nak, ó ma -- gyar!
		Ez él -- te -- tőd, s_ha el -- bu -- kál,
		Hant -- já -- val ez ta -- kar
		%
		A nagy vi -- lá -- gon e kí -- vül
		Nin -- csen szá -- mod -- ra hely.
		Áld -- jon vagy ver -- jen sors ke -- ze,
		Itt él -- ned, hal -- nod kell.
		%
		A	 
		%
		él -- ned, hal -- nod kell.
	}	
	>>
}
