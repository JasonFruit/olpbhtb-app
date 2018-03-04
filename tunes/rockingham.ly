\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Rockingham (L.M.)
  }
  composer = \markup {
    Lowell Mason
  }
  tagline = ##f
}

sopranoMusic = {
 \aikenHeads
 \clef treble
 \key g \major
 \autoBeamOff
 \time 3/2
 \relative c'' {
   \set Score.tempoHideNote = ##t \tempo 4 = 120
   
   \partial 2
   g2 fis4 g a2 b d4 b a2 \bar "||"
   b2 a4 g e2 d g4 a g2 \bar "||"
   g2 d'4 d e2 d b4 a a2 \bar "||"
   a2 b4 g e2 d g4 a g2 \bar "|."   
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