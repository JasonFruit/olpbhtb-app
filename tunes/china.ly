\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    China (C.M.)
  }
  composer = \markup {
    Timothy Swan
  }
  tagline = ##f
}

sopranoMusic = {
  \aikenHeads
  \clef treble
  \key d \major
  \autoBeamOff
  \time 3/2
  \relative c' {
    \set Score.tempoHideNote = ##t \tempo 4 = 120
    
    r1 fis'2 e1 e2 d1 d2 fis( b,) b fis1 \bar "||"
    a2 a1 a4( b) b1 cis2 d1 \bar "||" \break
    e2 e2.( fis4) d( b) d1 \times 2/3 { fis4( e d) } fis1 e4( d) e1 \bar "||"
    fis,4( a) d1 fis4( d) b1 \times 2/3 { a4( b cis) } d1. \bar "|."
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