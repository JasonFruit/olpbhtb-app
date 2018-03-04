\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Suffering Saviour (C.M.)
  }
  composer = \markup {
    
  }
  tagline = ##f
}

sopranoMusic = {
  \aikenHeadsMinor
  \clef treble
  \key d \minor
  \autoBeamOff
  \time 6/4
  \relative c' {
    \set Score.tempoHideNote = ##t \tempo 4 = 120
    
    d2. d2 e4 f( g) a g( f) e d2. \bar "||"
    d'2. a2 d4 cis( d) e d2. \bar "||"
    e2. f4.( e8) d4 c2 a4 a4.( g8) f4 g2 \bar "||"
    c4 a2 a4 g( f) e d1. \bar "|."
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