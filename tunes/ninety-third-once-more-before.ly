\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Ninety-Third (S.M.)
  }
  composer = \markup {
    Lucius Chapin
  }
  tagline = ##f
}

sopranoMusic = {
 \aikenHeads
 \clef treble
 \key c \major
 \autoBeamOff
 \time 3/2
 \relative c'' {
   \set Score.tempoHideNote = ##t \tempo 4 = 120
   
   r1 g4.( a8) c1 a4( c) d1 c4( a) g1 \bar "||"
   g4.( a8) c1 \times 2/3 { a4( b c) } d1 e4( d) c1 \bar "||"
   g'2 e1 d4( c) a1 c4( e) d1 c4( a) g1 \bar "||"
   g4.( a8) c1 a4( c) d1 e4( d) c1. \bar "|."
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