\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Heaven is my Home (P.M.)
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
  \time 4/4
  \relative c'' {
    \set Score.tempoHideNote = ##t \tempo 4 = 120
    
    g2 g4 a b4. a8 g2 \bar "||"
    a2 g4 fis g1 \bar "||"
    g2 g4 a b4. a8 g2 \bar "||"
    a2 g4 fis g1 \bar "||"
    d'2 e4 d d c8[ b] c2 \bar "||"
    c2 d4 c c b8[ a] b2 \bar "||"
    e2 c4 e d4. b8 d2 \bar "||"
    g,2 a4 fis g1 \bar "|."
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