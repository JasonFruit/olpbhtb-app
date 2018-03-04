\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Supplication (L.M.)
  }
  composer = \markup {
    
  }
  tagline = ##f
}

sopranoMusic = {
 \aikenHeadsMinor
 \clef treble
 \key a \minor
 \autoBeamOff
 \time 4/4
 \relative c' {
   \set Score.tempoHideNote = ##t \tempo 4 = 120
   
   e2 a4 a8[ g] a2 g b4 a8[ g] e2 \bar "||"
   e2 g4 e8[ d] e2 a c4 d e2 \bar "||"
   c2 e4 d8[ c] d2 e a,4 a8[ g] e2 \bar "||"
   e4.( g8) a4 a8[ g] a2 c b4 b a2 \bar "|."
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