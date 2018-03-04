\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    New Jerusalem (8.7.8.7.D)
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
  \time 6/4
  \relative c'' {
    \set Score.tempoHideNote = ##t \tempo 4 = 120
    
    r2. a2. a4 e a c d e e2. \bar "||"
    e2. c4 d c b a g a2. \bar "||"
    a2. a4 e a c d e e2. \bar "||"
    e2. c4 d c b a g a2. \bar "||"
    c2. e4 e e g e c d2. \bar "||"
    d2. e4 g e d c a g2. \bar "||"
    e2. a4 a a c b a d2. \bar "||"
    e2. c4 d c b a g a1. \bar "|."
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