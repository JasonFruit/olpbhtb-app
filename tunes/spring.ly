\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Spring (C.M.)
  }
  composer = \markup {
    Leonard Everett
  }
  tagline = ##f
}

sopranoMusic = {
  \aikenHeads
  \clef treble
  \key c \major
  \autoBeamOff
  \time 3/2
  \relative c' {
    \set Score.tempoHideNote = ##t \tempo 4 = 120
    
    \partial 2.
    g'4 a g g2. c,4 e d c2. \bar "||"
    c'4 d e g,1 a2 g2. \bar "||"
    c4 d e c2. a4 g e d2. \bar "||"
    c4 e g a1 b2 c2. \bar "|."
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