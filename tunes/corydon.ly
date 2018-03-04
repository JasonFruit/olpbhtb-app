\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Corydon (L.M.)
  }
  composer = \markup {
    James Whitman
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
    
    \partial 2.
    e4 g g g2. e4 c' d e2. \bar "||"
    e4 e d c2. b4 c e d2. \bar "||"
    g,4 a g a2. g4 c d e2. \bar "||"
    d4 c a g e c'2 b c2. \bar "|."
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