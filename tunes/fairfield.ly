\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Fairfield (C.M.)
  }
  composer = \markup {
    Hitchcock
  }
  tagline = ##f
}

sopranoMusic = {
  \aikenHeadsMinor
  \clef treble
  \key a \minor
  \autoBeamOff
  \time 4/4
  \relative c' {
    \set Score.tempoHideNote = ##t \tempo 4 = 120
    
    r2
    \repeat volta 2 {
      a'2 c4 a e g a a8[ b] c4 \bar "||"
      d4 e e8[ d] c4 b a2
    }
    c2 e4 e e c d d d \bar "||"
    b c c c8[ b] a[ c] b2 \bar "||"
    e2 e4 c a c d b g \bar "||"
    a4 b c8[ b] a4 g a1 \bar "|."
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