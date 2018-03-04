\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Mear (C.M.)
  }
  composer = \markup {
    A. Williams
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
   
   r2 f4 c'2 c4 a2 a4 f( g) a g2 \bar "||"
   g4 a2 f4 c'2 bes4 c2 \bar "||" \break
   c4 d2 c4 c2 f,4 bes2 a4 g2 \bar "||"
   f4 c'2 a4 bes8[ a] g2 f2. \bar "|."
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