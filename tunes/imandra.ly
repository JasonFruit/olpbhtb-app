\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Imandra (11s)
  }
  composer = \markup {
    Ananias Davison
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
   
   \repeat volta 2 {
     \partial 2 e4( g) a2 a8[ g] e4 c'2 d4 d e2 e8[ d] b4 a2
   }
   c4( d) e2 c4 g' e2 g,4 g a2 a8[ g] e4 g2 \bar "||"
   c4( b) a2 a8[ g] e4 c'2 d4 d e2 e8[ d] b4 a1 \bar "|."
   
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