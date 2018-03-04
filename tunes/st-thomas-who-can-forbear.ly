\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    St. Thomas (S.M.)
  }
  composer = \markup {
    Aaron Williams
  }
  tagline = ##f
}

sopranoMusic = {
 \aikenHeads
 \clef treble
 \key g \major
 \autoBeamOff
 \time 4/2
 \relative c' {
   \set Score.tempoHideNote = ##t \tempo 4 = 120
   
   \partial 2
   d2 g g b a4( g) a1. \bar "||" 
   b4( c) d2 c4( b) c2 b a1. \bar "||" 
   d2 b g a d, g b d \bar "||" 
   d2 e2 d4( c) b2 a g1. \bar "|."
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