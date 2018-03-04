\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Clarington (8s.D.)
  }
  composer = \markup {
    
  }
  tagline = ##f
}

sopranoMusic = {
 \aikenHeads
 \clef treble
 \key aes \major
 \autoBeamOff
 \time 3/2
 \relative c'' {
   \set Score.tempoHideNote = ##t \tempo 4 = 120
   
   \partial 2
   \repeat volta 2 {
     aes4.( f8) f2 es es f4( aes) aes2 aes4( bes) c1 \bar "||"
     c4.^\fermata( bes8) aes2 bes aes f es f4( aes) aes1^\markup { \small { \smallCaps { "Fine." } } } 
   }
   es'2^\fermata f es c bes4.( aes8) aes2 aes4( bes) c1 \bar "||"
   es2^\fermata f es c bes4.( aes8) aes2 aes f( aes^\markup { \small { "D.C." } }) \bar "||"
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