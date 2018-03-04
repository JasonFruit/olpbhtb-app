\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Baptism (C.M.)
  }
  composer = \markup {
    William Douglas
  }
  tagline = ##f
}

sopranoMusic = {
 \aikenHeads
 \clef treble
 \key g \major
 \autoBeamOff
 \time 6/4
 \relative c' {
   \set Score.tempoHideNote = ##t \tempo 4 = 120
   
   \partial 4
   d4 g2 b4 a( b) d g,2 g4 e4( d) \bar "||"
   d4 g2 b4 a( b) d d2.~ d2 \bar "||"
   d4 g2 e4 d2 e8[ d] b2 d4 b2 \bar "||"
   a8[ g] g2 g4 d( e) fis g2.~ g2 \bar "|."
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