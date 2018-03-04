\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Holy Manna (8.7.8.7.D)
  }
  composer = \markup {
    William Moore
  }
  tagline = ##f
}

sopranoMusic = {
  \aikenHeads
  \clef treble
  \key c \major
  \autoBeamOff
  \time 4/4
  \relative c'' {
    \set Score.tempoHideNote = ##t \tempo 4 = 120
    
    g4 g8[ a] c4 c d d8[ c] e[ d] c[ a] \bar "||"
    g4 g8[ a] c4 c e d c2 \bar "||"
    g4 g8[ a] c4 c d d8[ c] e[ d] c[ a]  \bar "||"
    g4 g8[ a] c4 c e d c2 \bar "||"

    e4 g g g e e8[ c] d4 c \bar "||"
    e4 g g g e e8[ c] d2^\fermata \bar "||"
    g,4 g8[ a] c4 c d d8[ c] e[ d] c[ a] \bar "||"
    g4 g8[ a] c4 c e d c2^\fermata \bar "|."
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