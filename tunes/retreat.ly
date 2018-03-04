\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Retreat (L.M.)
  }
  composer = \markup {
    Thomas Hastings
  }
  tagline = ##f
}

sopranoMusic = {
 \aikenHeads
 \clef treble
 \key c \major
 \autoBeamOff
 \time 6/4
 \relative c' {
   \set Score.tempoHideNote = ##t \tempo 4 = 120
   
   \partial 4
   e8[ f] g2 g4 g( f) e a2 a4 g2 \bar "||"
   b8[ c] d2 d4 d( c) b c2 e4 d2 \bar "||"
   d4 e2 d4 c2 a4 g2 e4 d2 \bar "||"
   e8[ f] g2 g4 g( f) e a2. b c~ c2  \bar "|."
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