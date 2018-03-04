\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Detroit (C.M.)
  }
  composer = \markup {
    William Bradshaw
  }
  tagline = ##f
}

sopranoMusic = {
  \aikenHeadsMinor
  \clef treble
  \key e \minor
  \autoBeamOff
  \time 4/4
  \relative c' {
    \set Score.tempoHideNote = ##t \tempo 4 = 96
    
    e2 g4 a b4. g8 a[ g] e[ d] e2 \bar "||"
    e2 g4 a b d e1 \bar "||"
    b2 e4 e8[ d] b4. a8 g[ a] b[ c] d2 \bar "||"
    b2 a4. g8 e4 d e1 \bar "|."
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