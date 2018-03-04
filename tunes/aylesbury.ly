\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Aylesbury (S.M.)
  }
  composer = \markup {
    John Chetham
  }
  tagline = ##f
}

sopranoMusic = {
  \aikenHeadsMinor
  \clef treble
  \key a \minor
  \autoBeamOff
  \time 4/4
  \relative c'' {
    \set Score.tempoHideNote = ##t \tempo 4 = 120
    
    a2 e'4 d c2 b a1 \bar "||"
    e'2 g4 f e2 d e1 \bar "||"
    r2 c2 b4 a e'2 c d4 c b1 \bar "||"
    b2 e4 d c2 b a1 \bar "|."
  }
}

#(set! paper-alist (cons '("phone" . (cons (* 3 in) (* 5 in))) paper-alist))

\paper {
  #(set-paper-size "phone")
}

\score {
  <<
    \new Staff {
      \new Voice {
	\sopranoMusic
      }
    }
  >>
}