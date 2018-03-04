\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Wondrous Love (12.9.12.12.9.)
  }
  composer = \markup {
    
  }
  tagline = ##f
}

sopranoMusic = {
 \aikenHeadsMinor
 \clef treble
 \key g \minor
 \autoBeamOff
 \time 4/4
 \relative c' {
   \set Score.tempoHideNote = ##t \tempo 4 = 120
   
   r2 g'2 g4 f a c d2 c4 a g2 g4 f a2 \bar "||"
   d2 f4 e d c d2 c4 a g1 \bar "||"
   r2 c2 d4 c d f g2^\fermata g2 f4 d d8[ c] a4 g2 \bar "||"
   g2 g4 f a c d2 c4 a g2 g4 f a2 \bar "||"
   d2 f4 e d c d2 c4 a g1 \bar "|."
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