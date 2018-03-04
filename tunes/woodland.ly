\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Woodland (8.6.8.8.6.)
  }
  composer = \markup {
    Nathaniel Gould
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
    g2 b4. b8 d2 b a4. b8 a2 \bar "||"
    b2 d2. d4 g, a b1 \bar "||"
    b2 a4. a8 b2 c d4. d8 d2 \bar "||"
    b2 d4. c8 b2 g c4. b8 a2 \bar "||"
    e'2 d2. c4 b a g1 \bar "|."
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