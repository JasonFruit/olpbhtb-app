\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Hicks' Farewell (C.M.)
  }
  composer = \markup {
    William Walker
  }
  tagline = ##f
}

sopranoMusic = {
  \aikenHeadsMinor
  \clef treble
  \key a \minor
  \autoBeamOff
  \time 6/4
  \relative c' {
    \set Score.tempoHideNote = ##t \tempo 4 = 120
    
    r2. c'2. a2 a4 a2 g4 e2 d4 e2. \bar "||"
    c'2. e4( d) c a2 c4 d2. \bar "||"
    c2. e4( d) c a2 a4 g2 e4 g2 \bar "||"
    g4 a2 g4 e2 g4 a2. \bar "|."
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