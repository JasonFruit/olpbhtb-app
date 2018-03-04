\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Windham (L.M.)
  }
  composer = \markup {
    Daniel Read
  }
  tagline = ##f
}

sopranoMusic = {
 \aikenHeadsMinor
 \clef treble
 \key d \minor
 \autoBeamOff
 \time 3/2
 \relative c' {
   \set Score.tempoHideNote = ##t \tempo 4 = 120
   
   \partial 2
   d2 f4 g a2 a f4 e d2 \bar "||"
   d2 f4 e f2 a g4 f e2 \bar "||" \break
   e2 f4 g a2 d d4 cis d2 \bar "||"
   a2 \time 2/2 a4 bes a g f2 e d1 \bar "|."
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