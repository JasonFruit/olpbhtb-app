\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Olive Shade (8.6.8.4)
  }
  composer = \markup {
    Daniel Smith
  }
  tagline = ##f
}

sopranoMusic = {
  \aikenHeadsMinor
  \clef treble
  \key a \minor
  \autoBeamOff
  \time 3/2
  \relative c' {
    \set Score.tempoHideNote = ##t \tempo 4 = 120
    
    r1 e4( g) a1 g2 e1 d2 e1 g2 a1 \bar "||"
    g2 c1 a2 b1 a4( g) e1 \bar "||"
    e2 a1 b2 a1 g2 e1 e4( g) a1 \bar "||"
    c2 b4 b a1 \bar "|."
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