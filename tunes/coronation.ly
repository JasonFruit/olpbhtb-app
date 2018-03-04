\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Coronation (C.M.)
  }
  composer = \markup {
    Oliver Holden
  }
  tagline = ##f
}

sopranoMusic = {
 \aikenHeads
 \clef treble
 \key g \major
 \autoBeamOff
 \time 4/4
 \relative c' {
   \set Score.tempoHideNote = ##t \tempo 4 = 120
   
   \partial 4
   d4 g g b b a g a \bar "||"
   b4 a g b a g2. \bar "||"
   a4 b a g b d8[ c] b[ a] b4 \bar "||"
   d4 d2 d e d4( cis) d2. \bar "||"
   b4 d b g b a8[ g] a[ b] a4 \bar "||"
   g4 d'2 c b4.( c8 a4) a g2. \bar "|."
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