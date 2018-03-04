\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Sessions (L.M.)
  }
  composer = \markup {
    L. O. Emerson
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
   
   g2 a4 g c2 g a4 g c4.( d8 e1) \bar "||"
   d2 d4 e d2 d e4 d c2^\fermata \bar "||"
   c2 c4 a c2 d d4 e d2^\fermata \bar "||"
   g,2 a4 g c4.( d8 e2) d e4 d c1 \bar "|."
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