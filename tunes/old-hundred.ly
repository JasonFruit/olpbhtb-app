\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Old Hundred (L.M.)
  }
  composer = \markup {
    Louis Bourgeois
  }
  tagline = ##f
}

sopranoMusic = {
 \aikenHeads
 \clef treble
 \key g \major
 \autoBeamOff
 \time 4/2
 \relative c'' {
   \set Score.tempoHideNote = ##t \tempo 4 = 120
   
   \partial 2
   g2 g fis e d g a b^\fermata \bar "||"
   b2 b b a g c b a^\fermata \bar "||"
   g2 a b a g e fis g^\fermata \bar "||"
   d' b g a c b a g^\fermata \bar "|."
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