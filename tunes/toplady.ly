\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Toplady (7s)
  }
  composer = \markup {
    Thomas Hastings
  }
  tagline = ##f
}

sopranoMusic = {
 \aikenHeads
 \clef treble
 \key bes \major
 \autoBeamOff
 \time 3/4
 \relative c' {
   \set Score.tempoHideNote = ##t \tempo 4 = 120
   
   \partial 4
   f8. g16 f4 d bes'8. g16 f2 \bar "||"
   bes8. c16 d4. c8 bes a bes2^\markup { \tiny \smallCaps "Fine." } \bar "|."
   a8. bes16 c4. c8 a f bes2 \bar "||"
   a8. bes16 c4. c8 a f bes2^\markup {\tiny \smallCaps "D.C." } \bar "||"
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