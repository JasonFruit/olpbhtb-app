\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Nettleton (8s,7s.D)
  }
  composer = \markup {
    Wyeth's Collection
  }
  tagline = ##f
}

sopranoMusic = {
 \aikenHeads
 \clef treble
 \key es \major
 \autoBeamOff
 \time 3/2
 \relative c'' {
   \set Score.tempoHideNote = ##t \tempo 4 = 120
   
   \partial 2
   \repeat volta 2 {
     g4 f es2 es g4 bes f2 f \bar "||"
     g4 bes c2 bes g4 f es1^\markup { \tiny \smallCaps "Fine." }
   }
   bes'4 c8[ d] es2 d c4 bes c4.( bes8) g2 \bar "||"
   bes4 c8[ d] es2 d c4 bes es1^\markup { \tiny \sans "D.C." } \bar "||"
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