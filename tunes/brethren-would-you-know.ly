\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Howell (P.M.)
  }
  composer = \markup {
    Jason Fruit
  }
  tagline = ##f
}

sopranoMusic = {
  \aikenHeads
  \clef treble
  \key c \major
  \autoBeamOff
  \time 4/4
  \relative c'' {
    \set Score.tempoHideNote = ##t \tempo 4 = 120
    
    g4. g8 a4 c d c e2 \bar "||"
    c4. a8 c4 c e d c2 \bar "||"
    g4. g8 a4 c d c e2 \bar "||"
    c4. a8 c4 c8[ d] e4 d c2 \bar "||"
    g'4. g8 a8[ g] e4 g2 \bar "||"
    c,4. d8 e4 g e8[ d] c4 a2 \bar "||"
    g4. g8 a4 c d c e2 \bar "||"
    c4. a8 c4 c e d c1 \bar "|."
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