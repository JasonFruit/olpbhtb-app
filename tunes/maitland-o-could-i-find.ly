\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Maitland (C.M.)
  }
  composer = \markup {
    George N. Allen
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
   e4( f) g1 g2 c1 e2 d1 c2 a4( c2.) \bar "||"
   a2 g1 g2 c1 e2 d1.~ d1 \bar "||"
   e4( f) g1 e2 c1 e2 d1 c2 a4( c2.)  \bar "||"
   a2 g1 c2 e1 d2 c1.~ c1 \bar "|."
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