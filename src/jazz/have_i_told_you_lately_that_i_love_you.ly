\include "src/include/common.lyi"
\header {
	title="Have I told you lately that I love you"
	singer="Van Morrison"
	style="Pop"
	piece="Med. Ballad"

	uuid="d86922f4-a26e-11df-b237-0019d11e5a41"
}

harmony=\chords {
	\startChords

	\startSong

	\repeat volta 2 {
		f2:maj7 a2:m7 | bes2:maj7 c2:7 |
	}
	bes1:maj7 | a1:m7 | g2:m7 c2:7 | f2:maj7 r4 c4:7 |

	\endSong

	\endChords
}

text=\lyrics {
	Have I told you lately that I love you.
	Have I told you that there's no one but you.
	You give me so much gladness.
	Take away all the sadness.
	Take my troubles that's what you do.
}

\include "src/include/harmony_text.lyi"
