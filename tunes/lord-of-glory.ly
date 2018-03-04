\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Lord of Glory (C.M.)
  }
  composer = \markup {
    John R. Daily
  }
  tagline = ##f
}

sopranoMusic = {
  \aikenHeads
  \clef treble
  \key f \major
  \autoBeamOff
  \time 3/4
  \relative c' {
    \set Score.tempoHideNote = ##t \tempo 4 = 120
    
    \partial 4
    f4 a2 c4 c( a) f a2 g4 f2 \bar "||"
    c'4 d2 d4 c2 a4 g2^\fermata \bar "||"
    a4 c2 d8[ e] f2 d4 c2 d4 f,2 \bar "||"
    f4 a2 c4 c( a) g f2^\fermata \bar "|."
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