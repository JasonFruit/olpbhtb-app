\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Christian Warfare (12.11.12.11.D)
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
  \time 6/4
  \relative c'' {
    \set Score.tempoHideNote = ##t \tempo 4 = 120
    
    \repeat volta 2 {
      c2. g4 a c d2. e2 d4 c c g a c2 \bar "||"
      c2. d4 c d e d c a g g g1.
    }
    c2. d4 e f g2. d e4 d c a c2 \bar "||"
    c2. d4 d d e g d e d c d2. \bar "||"
    g,2. g4 a c d2. e2( d4) c c g a c2 \bar "||"
    c2. d4 c d e d c a g g g2. \bar "|."
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