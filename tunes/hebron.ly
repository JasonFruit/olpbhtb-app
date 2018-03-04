\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Hebron (L.M.)
  }
  composer = \markup {
    Lowell Mason
  }
  tagline = ##f
}

sopranoMusic = {
 \aikenHeads
 \clef treble
 \key bes \major
 \autoBeamOff
 \time 3/2
 \relative c' {
   \set Score.tempoHideNote = ##t \tempo 4 = 120
   
   \partial 2
   f2 d4 f g2 f g4 a bes2 \bar "||"
   bes2 a4 c d2 bes a4 g f2 \bar "||"
   f2 bes4 c d2 bes es4 d c2 \bar "||"
   c2 d4 bes g2 f g4 a bes2 \bar "|."
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