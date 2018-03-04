\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Wonder (L.M. refrains)
  }
  composer = \markup {
    Jeremiah Ingalls
  }
  tagline = ##f
}

sopranoMusic = {
 \aikenHeads
 \clef treble
 \key g \major
 \autoBeamOff
 \time 4/4
 \relative c' {
   \set Score.tempoHideNote = ##t \tempo 4 = 180
   
   r2 d2 g4 g b a b b a2 \bar "||"
   b4 g e d g2 g2 \bar "||"
   r2 d2 g4 g b a b b a2 \bar "||"
   b4 g e d g2 g2 \bar "||"
   r2 b2 d4 d d d e8[ d] e4 d2 \bar "||"
   b4 d d d e2 d2 \bar "||"
   r2 d2 e4 e d b b8[ a] b4 a2 \bar "||"
   b4 g e d g2 g2 \bar "|."
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