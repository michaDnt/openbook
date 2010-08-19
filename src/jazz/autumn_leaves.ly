\include "src/include/common.lyi"
\header {
	title="Autumn Leaves"
	subtitle="Les Feuilles Mortes"
	composer="Joseph Kosma"
	copyright="1947, 1950, 1987 Enoch Et Cie. Renewed 1975, 1978 Enoch Et Cie"
%% Sole Selling Agent for U.S.A (including it's territories and possessions)
%% and Dominion of Canada: Morley Music Co., by arrangement with Enoch Et Cie
%% international Copyright Secured. All Rights Reserved.
	poet="Jacques Prevert, Johnny Mercer"
	style="Jazz"
	piece="Medium Swing"
	remark="derived from the real book and the fake book by Mark Veltzer on Mon May 22 02:18:00 IDT 2006"

	completion="5"
	uuid="8c35acf6-a7c1-11df-9040-0019d11e5a41"
}

%{
	TODO:
%}

myChords=\chordmode {
	\startChords

	\startSong

	\partial 2. r2. |

	\mark "A"
	\startPart
	\repeat volta 2 {
		a1:m7 | d1:7 | g1:maj7 | c1:maj7 | \myEndLine
		fis1:m7.5- |
	}
	\alternative {
		{
			b1:7 | e1:m | e1:m | \myEndLine
		}
		{
			b1:7 | e2:m a2:m | e1:m | \myEndLine
		}
	}
	\endPart

	\mark "B"
	\startPart
	fis1:m7.5- | b1:7.9- | e1:m | e1:m | \myEndLine
	a1:m7 | d1:7 | g1:maj7 | g1:maj7 | \myEndLine
	fis1:m7.5- | b1:7.9- | e2:m7 ees2:7 | d2:m7 des2:7 | \myEndLine
	c1:maj7 | b1:7.9- | e2:m a:m | e1:m | \myEndLine
	\endPart

	\endSong

	\endChords
}
myVoice=\relative e' {
	\time 4/4
	\key e \minor
	%% http://en.wikipedia.org/wiki/Tempo
	\tempo "Allegro" 4 = 130

	\partial 2. e4 fis g |
	\repeat volta 2 {
		c1~ | c4 d, e fis | b2 b~ | b4 c, d e |
		a1~ |
	}
	\alternative {
		{
			a4 b, cis dis | g1 | r4 e fis g |
		}
		{
			a4 fis a g | e1~ | e4 r dis e |
		}
	}
	fis b, fis'2~ | fis4 fis e fis | g1~ | g4 g fis g |
	a1~ | a4 d, d' c | b1~ | b4 r ais b |
	c c a a | fis2. c'4 | b2 b~ | b2. e,4 |
	a2. g4 | fis2 g4 b, | e1~ | e4 r r2 |
}
myLyrics=\lyricmode {
	The fall -- ing leaves drift by the win -- dow
	The au -- tumn leaves, of red and gold.
	I see your

	_ I used to hold. Since you

	went a -- way the days grow long,
	And soon I'll hear old win -- ter's song.
	But I miss you most of all my dar -- ling,
	When au -- tumn leaves start to fall.
}
myLyricsmore=\lyricmode {
	_ _ _ lips, the sum -- mer kiss -- es,
	The sun -- burned hands
}
%% score for printing
\score {
	<<
		\new ChordNames="mychords" \myChords
		\new Voice="myvoice" \myVoice
		\new Lyrics \lyricsto "myvoice" \myLyrics
		\new Lyrics \lyricsto "myvoice" \myLyricsmore
	>>
	\layout {
	}
}
%% score for midi
\score {
	\unfoldRepeats
	<<
		\new ChordNames="mychords" \myChords
		\new Voice="myvoice" \myVoice
	>>
	\midi {
	}
}
