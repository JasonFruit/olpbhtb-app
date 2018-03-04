\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Long-Sought Home (C.M.)
  }
  composer = \markup {
    William Bobo
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
    \set Score.tempoHideNote = ##t \tempo 4 = 120
    
    \repeat volta 2 {
      r2 g8[ a] c2 e4 g,2 g'4 e2 e8[ d] c2 \bar "||"
      e8[ d] c2 c8[ a] g2 a8[ c] c2.
    }
    c2 e4 g,2 g'4 e2 e8[ d] c2 \bar "||"
    e8[ d] c2 c8[ a] g2 a8[ c] c2. \bar "|."
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