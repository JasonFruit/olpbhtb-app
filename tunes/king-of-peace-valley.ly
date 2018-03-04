\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    King of Peace (Valley) (7s)
  }
  composer = \markup {
    F. Price
  }
  tagline = ##f
}

sopranoMusic = {
  \aikenHeadsMinor
  \clef treble
  \key a \minor
  \autoBeamOff
  \time 6/4
  \relative c'' {
    \set Score.tempoHideNote = ##t \tempo 4 = 120
    
    a2 b4 a2 g4 e2 g4 a2. \bar "||"
    c2 b8[ a] b2 a8[ g] e2 g4 a2. \bar "||"
    c2 b8[ a] d2 c4 e2 a,4 g2. \bar "||"
    e'2 b4 a2 g4 e2 g4 a2. \bar "|."
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