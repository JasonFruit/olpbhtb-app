\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Boylston (S.M.)
  }
  composer = \markup {
    Lowell Mason
  }
  tagline = ##f
}

sopranoMusic = {
 \aikenHeads
 \clef treble
 \key c \major
 \autoBeamOff
 \time 3/2
 \relative c' {
   \set Score.tempoHideNote = ##t \tempo 4 = 120
   
   \partial 2
   g'2 e4 f g2 a g1 \bar "||"
   c2 c4 b a2 a g1 \bar "||" \break
   g2 e4 f g2 g a4 b c2 \bar "||"
   b2 c4 a g2 g g1 \bar "|."
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