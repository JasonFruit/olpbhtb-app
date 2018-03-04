\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Dundee (C.M.)
  }
  composer = \markup {
    Guillaume Franc
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
   
   \partial 2
   f2 a bes c f, g a bes^\fermata \bar "||"
   a2 g f f e f^\fermata \bar "||"
   c'2 f e d c c b c^\fermata \bar "||"
   a2 g f f e f^\fermata \bar "|."
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