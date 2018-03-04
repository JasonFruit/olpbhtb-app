\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Albion (S.M.)
  }
  composer = \markup {
    R. Boyd
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
   
   r2 g b4 d b g a2 \bar "||"
   a2 b4 d c8[ b] a4 g2 \bar "||"
   g2 b4 b d d b4.( a8 g4) b a2 \bar "||"
   b2 g4 d g8[ a] b[ c] d2 \bar "||"
   d2 b4 d c8[ b] a4 g1 \bar "|."
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