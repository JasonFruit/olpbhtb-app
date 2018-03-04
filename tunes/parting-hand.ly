\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Parting Hand (L.M.)
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
    
    \repeat volta 2 {
      r2. g\segno b4( a) g g2 g4 a2 g4 a2 \bar "||"
      b4 d2 b4 d2 d4 b( a) g g2.^\markup { \smallCaps "Fine." }
    }
    r2. d' e2 d4 e2 g4 d2 d4 b2. \bar "||"
    d2. e2 d4 e2 g4 d2 d4 b2.^\markup { "D.S." } \bar "||"
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