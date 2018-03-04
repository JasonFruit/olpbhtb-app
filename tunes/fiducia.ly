\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Fiducia (C.M.D.)
  }
  composer = \markup {
    Robison
  }
  tagline = ##f
}

sopranoMusic = {
 \aikenHeadsMinor
 \clef treble
 \key a \minor
 \autoBeamOff
 \time 4/4
 \relative c'' {
   \set Score.tempoHideNote = ##t \tempo 4 = 120
   
   \repeat volta 2 {
     a2 a4 b a2 e g4. a8 g4. \bar "||"
     d8 e4 d e g a1
   }
   c2 e4 e e2 c d4 c d2 \bar "||"
   e2 c4 a c2 e d1 \bar "||"
   c2 e4 c a2 e g4. a8 g4. \bar "||"
   d8 e4 d e g a1 \bar "|."
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