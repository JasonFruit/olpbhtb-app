\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Oh, Could I Find (C.M.D.)
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
  \time 3/4
  \relative c'' {
    \set Score.tempoHideNote = ##t \tempo 4 = 120
    
    \partial 4
    g4 b2 b8[ a] g2 a4 g2 e4 d2 \bar "||"
    e4 g2 g4 a2 a4 b2.~ b2 \bar "||"
    g4\segno b2 b8[ a] g2 a4 g2 e4 d2 \bar "||"
    d4 g2 g4 b2 a4 g2.~ g2^\markup { \smallCaps { "Fine." } } \bar "|."
    g4 a2 a4 g2 a4 b2 b8[ a] g2  \bar "||"
    g4 a2 a4 g2 a4 b2.~ b2^\markup { "D.C." } \bar "||"
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