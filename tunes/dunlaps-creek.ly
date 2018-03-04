\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Dunlap’s Creek (C.M.)
  }
  composer = \markup {
    Samuel McFarland
  }
  tagline = ##f
}

sopranoMusic = {
 \aikenHeads
 \clef treble
 \key f \major
 \autoBeamOff
 \time 3/2
 \relative c' {
   \set Score.tempoHideNote = ##t \tempo 4 = 120
   
   \partial 2
   f2 a4 c a2 g4( f) d f f2 \bar "||"
   c'2 f4 e d2 c4( a) c1 \bar "||"
   c2 f4 e d2 c d8[ c] a[ g] f2 \bar "||"
   f4.( g8) a4 c a2 g f1 \bar "|."
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