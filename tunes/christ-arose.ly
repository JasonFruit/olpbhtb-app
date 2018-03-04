\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Christ Arose (P.M.)
  }
  composer = \markup {
    Robert Lowry
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
    
    g2 g4 a a g g2
    g2 f4 a a2 g
    a2 b4 c c g g2
    a2 g4 fis g1 \bar "||"
    
    c,4^\markup { \small { \smallCaps "Refrain:" } } c8. c16 e4 g8. g16 c2.
    c8. d16 e4 c d8. c16 b8. a16 g2.
    b8. c16 d4 d d8. c16 d8. e16 c4 a g
    g8. g16 a4 a a8. d16 d8. c16 b4 c d
    g,8. g16 e'2.
    d8. c16 f2.
    e8. d16 c4 g e' d c1 \bar "|."
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