\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Redeemed (12.11.12.11.D)
  }
  composer = \markup {
    E. P. Boroughs
  }
  tagline = ##f
}

sopranoMusic = {
  \aikenHeads
  \clef treble
  \key f \major
  \autoBeamOff
  \time 4/4
  \relative c' {
    \set Score.tempoHideNote = ##t \tempo 4 = 120
    
    \repeat volta 2 {
      \partial 2
      f2 a g4 a d,2^\segno f4 f c4.( d8) f4 f a( f) a \bar "||"
      c d2 c4 c a2 f4 f d2 f4 f f2
    }
    a2 c c4 c a( f) a c d2 d4 d c4( a) c2~ c2 \bar "||"
    c2 d4( c) d e f4.( e8) d4 c a2 d4 d d2 \bar "||"
    f2 c4.( bes8) a4 f^\markup { \small "D.S." } \bar "|"
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