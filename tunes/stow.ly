\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Stow (H.M.)
  }
  composer = \markup {
    
  }
  tagline = ##f
}

sopranoMusic = {
  \aikenHeads
  \clef treble
  \key c \major
  \autoBeamOff
  \time 4/4
  \relative c'' {
    \set Score.tempoHideNote = ##t \tempo 4 = 120
    
    r2
    g2 c4 c c d e2 \bar "||"
    e2 d4 c f e d2^\fermata \bar "||"
    d2 e4 d e f g2 \bar "||"
    e2 d4 c b a g2^\fermata \bar "||"
    c,4.( d8) e2 f g2. g4 a2 g c2. \bar "||"
    c4 d2. d4 e2 c c b c1 \bar "|."
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