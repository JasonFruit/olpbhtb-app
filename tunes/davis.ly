\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Davis (11.8.11.8.)
  }
  composer = \markup {
    Freeman Lewis
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
   
   r2 g g b4 c d2 d4 c b2 a4 a g2. \bar "||"
   d'4 g2 g4 a g2 e4 e d2. \bar "||"
   d4 g2 g4 d e( d) b d e2 d4 b a2. \bar "||"
   g4 d'2 d4 g, b2 a4 a g1 \bar "|."
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