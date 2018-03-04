\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Star in the East (P.M.)
  }
  composer = \markup {
    
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
    
    \repeat volta 2 {
      a2 a4 b a2 e4 e g2 g4 a g( f) e2 \bar "||"
      a2 c4 a b2 e,4 d e2 g4 g a1
    }
    a2 c4 d e2 d4 c d2 d4 e c2 a \bar "||"
    a2 c4 d e2 d4 c d2 d4 c b1 \bar "||"
    e2 e4 c a2 e4 e g2 g4 a g( f) e2 \bar "||"
    a2 c4 a b2 e,4 d e2 g4 g a1 \bar "|."
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