\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Angel Band (C.M. refrain)
  }
  composer = \markup {
    William Bradbury,
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
      \partial 4 g4 g2 g4 g2 g4 a2 c4 c2
      a4 g( c) d e2 d4
    }
    \alternative {
      { c2.~ c2 s4 }
      { c1.  }
    }
    d2. d e2 d4 c2.
    d2. d2 c4 e2 d4 c2
    c4 \repeat volta 2 {
      a4 c c d c a g2 e4 g2
      g4 }
    \alternative {
      { c2 c4 d2 d4 e2( d4 c2) c4 }
      { c2 d4 e2 d4 c2.~ c2 \bar "|." }
    }
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