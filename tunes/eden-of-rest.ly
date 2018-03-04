\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Eden of Rest (12.11.12.11)
  }
  composer = \markup {
    
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
   \set Score.tempoHideNote = ##t \tempo 4 = 120
   
   \partial 4
   \repeat volta 2 {
     d4 d2 d4 g g2 g4 b a2 b8[ a] g4 b2 g4 \bar "||"
     g4 d2 d4 g g2 g4 g b2 a4 a g2.^\markup { \small { \smallCaps "Fine." } } 
   }
   g4 a2 b4 d d2 d4 d b2 g4 b a2 g4 \bar "||"
   g4 a2 b4 d d2 d4 d b4( g) a b a2.^\markup { \small "D.C." } \bar "||"
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