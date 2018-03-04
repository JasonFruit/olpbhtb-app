\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Duke Street (L.M.)
  }
  composer = \markup {
    John Hatton
  }
  tagline = ##f
}

sopranoMusic = {
 \aikenHeads
 \clef treble
 \key f \major
 \autoBeamOff
 \time 2/2
 \relative c' {
   \set Score.tempoHideNote = ##t \tempo 4 = 120
   
   f2 a4 bes c2 d4( e) f2 e4( d) c1 \bar "||"
   c2 c4 c d2 c bes a g1 \bar "||"
   a2 a4 g f( a) c( f) d( c) bes( a) a2( g) \bar "||"
   c2 d4 e f2. bes,4 a2 g f1 \bar "|."
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