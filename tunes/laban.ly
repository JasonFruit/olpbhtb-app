\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Laban (S.M.)
  }
  composer = \markup {
    L. Mason
  }
  tagline = ##f
}

sopranoMusic = {
 \aikenHeads
 \clef treble
 \key c \major
 \autoBeamOff
 \time 4/4
 \relative c' {
   \set Score.tempoHideNote = ##t \tempo 4 = 120
   
   \partial 2
   e4.( f8) g4 g g c g2 \bar "||"
   e'2 d4 c b a g2 \bar "||"
   e4.( f8) g4 g g c b2 c d \bar "||"
   d2 e4 c g b c2 \bar "|."
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