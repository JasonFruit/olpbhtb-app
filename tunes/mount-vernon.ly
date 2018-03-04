\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Mount Vernon (8.7.8.7.)
  }
  composer = \markup {
    Lowell Mason
  }
  tagline = ##f
}

sopranoMusic = {
  \aikenHeads
  \clef treble
  \key c \major
  \autoBeamOff
  \time 4/4
  \relative c' {
    \set Score.tempoHideNote = ##t \tempo 4 = 120
    
    e4 e g e f a a g \bar "||"
    c4 e, e d8[ e] f4 e d2 \bar "||"
    g4 g e' c a c a g \bar "||"
    g4 e' d c a g e2 \bar "|."
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