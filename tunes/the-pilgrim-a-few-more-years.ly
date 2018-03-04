\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    The Pilgrim (S.M.D.)
  }
  composer = \markup {
    
  }
  tagline = ##f
}

sopranoMusic = {
  \aikenHeads
  \clef treble
  \key g \major
  \autoBeamOff
  \time 6/4
  \relative c'' {
    \set Score.tempoHideNote = ##t \tempo 4 = 120
    
    \partial 4
    g4 b2 b4 a2 c4 b2.~ b2 \bar "||"
    a4 g2 g4 g2 b4 a2.~ a2 \bar "||"
    a4 b2 d4 b2 g4 g2 e4 e2 \bar "||"
    e4 d2 g4 b2 a4 g2.~ g2 \bar "||"

    g4 b2 b4 b2 c4 b2.~ b2 \bar "||"
    a4 g2 g4 g2 b4 a2.~ a2 \bar "||"

    a4^\markup { \small { \smallCaps "Refrain:" } } b2 d4 b2 g4 g2 g4 e2 \bar "||"
    e4 d2 g4 b2 a4 g2.~ g2 \bar "|."
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