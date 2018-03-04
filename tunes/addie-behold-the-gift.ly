\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Addie (S.M.)
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
  \time 3/2
  \relative c' {
    \set Score.tempoHideNote = ##t \tempo 4 = 120
    
    \partial 2
    c2 e4 g a2 g g1 \bar "||"
    g2 a4 g c2 e, d1 \bar "||"
    d2 e4 g a2 g c4 d e2 \bar "||"
    e4( d) c a g2 g g1 \bar "|."
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