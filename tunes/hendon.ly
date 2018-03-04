\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Hendon (7s)
  }
  composer = \markup {
    CÆSAR MALAN
  }
  tagline = ##f
}

sopranoMusic = {
 \aikenHeads
 \clef treble
 \key g \major
 \autoBeamOff
 \time 2/2
 \relative c'' {
   \set Score.tempoHideNote = ##t \tempo 4 = 120
   
   g2 g g4( d) g( b) d2 c b1 \bar "||"
   b2 b b4( a) c( a) g2 fis4( a) g1 \bar "||"
   b2 b a a4( b) c2 d c( b) \bar "||"
   d2 d e d d4( c) c( b) b2( a) \bar "||"
   g2 a b c4( a) g2 fis g1 \bar "|."
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