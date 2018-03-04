\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Talmar (8.7.8.7.)
  }
  composer = \markup {
    I. B. Woodbury
  }
  tagline = ##f
}

sopranoMusic = {
  \aikenHeads
  \clef treble
  \key f \major
  \autoBeamOff
  \time 2/2
  \relative c'' {
    \set Score.tempoHideNote = ##t \tempo 4 = 120
    
    a4 a a2 f g4 g a2 a \bar "||"
    c4 d c2 a f4 a g1 \bar "||"
    a4 a a2 f g4 g a2 a \bar "||"
    c4 d c a g2 a4( g) f1 \bar "|."

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