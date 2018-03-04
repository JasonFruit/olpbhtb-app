\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Uxbridge (L.M.)
  }
  composer = \markup {
    Lowell Mason
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
   
   \partial 2
   f2 a4 g a g f2 e f \bar "||"
   a2 c4 c d e f2 d c \bar "||"
   c2 f4 c d c bes2 a g \bar "||"
   g2 a4 c c bes a2 g f2 \bar "|."
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