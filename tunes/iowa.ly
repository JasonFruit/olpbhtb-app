\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Iowa (8.8.8.8.)
  }
  composer = \markup {
    Augustus Fillmore
  }
  tagline = ##f
}

sopranoMusic = {
  \aikenHeads
  \clef treble
  \key c \major
  \autoBeamOff
  \time 3/4
  \relative c'' {
    \set Score.tempoHideNote = ##t \tempo 4 = 80
    
    \partial 4
    g4 g2 a8 g g4 a b c2 \bar "||"
    g4 c4 c c c b c d2 \bar "||"
    g,4 e'2 d8 e c4 a c g2 \bar "||"
    \break
    g4 a2 f8 a g4 e c' g2 \bar "||"
    g4 e'2 c8 c d4 a b c2 \bar "|."
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