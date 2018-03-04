\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Saw Ye My Saviour (P.M.)
  }
  composer = \markup {
    Jason Fruit
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
    
    a2 g4 e g2 a
    c2 b4 a g2 a
    e'2 d4 c c2 b4 a b1~ b2
    e,4 g a a a g e2
    a4 b c c b a g2
    c4 d e2 d4 c d2 c4 b a1~ a2 r \bar "|."
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