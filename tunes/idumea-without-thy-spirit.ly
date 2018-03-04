\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Idumea (S.M.)
  }
  composer = \markup {
    Ananias Davison
  }
  tagline = ##f
}

sopranoMusic = {
  \aikenHeadsMinor
  \clef treble
  \key a \minor
  \autoBeamOff
  \time 3/2
  \relative c'' {
    \set Score.tempoHideNote = ##t \tempo 4 = 120
    
    r1 a2 a1 g4( a) c1 d4( c) a1 \bar "||"
    e'2 g1 e4( d) c1 d2 e1 \bar "||" \break
    e2 g1 e4( d) e1 d4( c) a1 g4( e) g1 \bar "||"
    g2 a1 g4( a) c1 d4( c) a1. \bar "|."
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