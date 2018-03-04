\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Ortonville (C.M.)
  }
  composer = \markup {
    Thomas Hastings
  }
  tagline = ##f
}

sopranoMusic = {
 \aikenHeads
 \clef treble
 \key bes \major
 \autoBeamOff
 \time 3/2
 \relative c' {
   \set Score.tempoHideNote = ##t \tempo 4 = 120
   
   \partial 2
   f2 bes1 bes2 c1 c2 d1 c2 bes1 \bar "||" 
   f2 g1 g2 bes1 g2 f1.~ f1 \bar "||" 
   f2 bes1 bes2 c1 c2 d1 es2 f1 \bar "||" 
   d4( c) bes1 bes2 c1 c2 bes1.~ bes1 \bar "||" 
   bes2 d1 d2 c1 c2 bes1.~ bes1 \bar "|."
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