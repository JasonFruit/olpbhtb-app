\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Hursley (L.M.)
  }
  composer = \markup {
    Peter Ritter
  }
  tagline = ##f
}

sopranoMusic = {
 \aikenHeads
 \clef treble
 \key f \major
 \autoBeamOff
 \time 3/2
 \relative c' {
   \set Score.tempoHideNote = ##t \tempo 4 = 120
   
   f2 f f f( e) f g( a) g f1. \bar "||"
   a2 a a a( g) a c( bes) a g1. \bar "||"
   g2 g a bes1 g2 a1 bes2 c1. \bar "||"
   d2 d d c1 a2 bes( a) g f1. \bar "|."
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