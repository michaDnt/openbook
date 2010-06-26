\include "lilypond/include/common.lyi"
\header {
	title="A Fine Romance"
	subtitle=""
	composer="Jerome Kern"
	poet="Dorothy Fields"
	style="Jazz"
	remark="copied from the real book"
	piece="Med. Ballad"
}

harmony=\chords {
	\partial 4 r4 |
	\repeat volta 2 {
		c1:6 | a1:m7 | g1:7 | dis1:dim | \break
		e1:m7 | a1:m7 | d1:m7 | g1:7 | \break
	}
	\alternative {
		{
			c1:6 | e2.:m7 aes4:7 | d2:m7 g2:7 | d2:m7 g2:7 | \break
			a1:m7 | e2.:m7 f4:7 | e2:7 a2:7 | d2:m7 g2:7 | \break
		}
		{
			c1:maj7 | c2:7/bes g4:7 c4:7 | f2:maj7 a2:7/e | d2:m7 dis2:dim | \break
			e1:m7 | g1:7 | c1:6 | d2:m7 g2:7 | \break
		}
	}
}

%{
	TODO:
	- add lyrics
%}

tune={
	\key c \major
	\time 4/4
	\partial 4 e'4 |
	\repeat volta 2 {
		c'1 | a'4 g'2 a'4 | b1 | b'4 a'2 b'4 |
		e'1 | d''4 c''2 e'4 | g'1 | e''4 d''2 g'4 |
	}
	\alternative {
		{
			c''4 b'4 c''4 d''4 | \times 2/3 { c''4 b'4 bes'4 } a'4 aes'4 | g'2 g'2~ | g'2. g'4 |
			a'4 gis'4 a'4 b'4 | \times 2/3 { a'4 aes'4 g'4 } ges'4 f'4 | e'2 e'2~ | e'2 e'2 |
		}
		{
			c''4 b'4 c''4 d''4 | \times 2/3 { e''4 d''4 c''4 } b'4 bes'4 | a'1 | \times 2/3 { c''4 b'4 bes'4 } a'4 aes'4 |
			g'1 | \times 2/3 { b'4 a'4 aes'4 } g'4 d''4 | c''1~ | c''2 r4 <\parenthesize e'>4 \bar "|."
		}
	}
}

\score {
	<<
		\context ChordNames \harmony
		\context Staff \tune
	>>
	\midi {}
	\layout {}
}
