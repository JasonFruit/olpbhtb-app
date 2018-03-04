\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Olney (8s, 7s)
  }
  composer = \markup {
    Amzi Chapin
  }
  tagline = ##f
}

sopranoMusic = {
 \aikenHeads
 \clef treble
 \key g \major
 \autoBeamOff
 \time 2/4
 \relative c'' {
   \set Score.tempoHideNote = ##t \tempo 4 = 120
   
   \repeat volta 2 {
     g4 g e g8[ e] d4 d8[ e] g[ a] b4 \bar "||"
     d4. e8 b4 g a8[ g] e4 g2^\markup { \small { \smallCaps "Fine." } }
   }
   d'4. c8 b[ c] d4 g4. d8 e4 d \bar "||"
   g4 d b g a e8[ fis] g2^\markup { \small "D.C." } \bar "||"
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