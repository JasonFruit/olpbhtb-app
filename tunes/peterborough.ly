\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Peterborough (C.M.)
  }
  composer = \markup {
    Ralph Harrison
  }
  tagline = ##f
}

sopranoMusic = {
 \aikenHeads
 \clef treble
 \key g \major
 \autoBeamOff
 \time 4/4
 \relative c'' {
   \set Score.tempoHideNote = ##t \tempo 4 = 120
   
   r2 g2 b4 b c c b2 a g1 \bar "||"
   b2 d4 d c2 b a1 \bar "||" \break
   r2 b a4 a b g c2 b a2^\fermata \bar "||"
   a2 b4.( c8 b4) d c( b) a2 g1 \bar "|."
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