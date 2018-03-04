\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Azmon (C.M.)
  }
  composer = \markup {
    Carl G. Glaeser
  }
  tagline = ##f
}

sopranoMusic = {
 \aikenHeads
 \clef treble
 \key a \major
 \autoBeamOff
 \time 3/2
 \relative c' {
   \set Score.tempoHideNote = ##t \tempo 4 = 120
   
   \partial 2
   e2 a4 a b2 b cis4 b a2 \bar "||"
   b2 cis4 cis d2 cis b1 \bar "||"
   e2 e4 cis cis2 a a4 fis fis2 \bar "||"
   a4( fis) e a a2 b a1 \bar "|."
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