\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    The Solid Rock (L.M. refrain)
  }
  composer = \markup {
    William Bradbury
  }
  tagline = ##f
}

sopranoMusic = {
  \aikenHeads
  \clef treble
  \key g \major
  \autoBeamOff
  \time 3/4
  \relative c' {
    \set Score.tempoHideNote = ##t \tempo 4 = 120
    
    \partial 4
    d4 g8 b d4 b b8 a a4 \bar "||"
    b4 c8 c c4 a g8 fis g4 \bar "||"
    d4 g8 b d4 b b8 a a4 \bar "||"
    b4 c8 c c4 a g8 fis g4 \bar "||"
    d'4^\markup { \smallCaps { "Refrain:" } } d8 d d4 d e8 e e4 \bar "||"
    e4 d8 b b4 g b8 b a4 \bar "||"
    d,4 g8 g g4 b a8 a g4^\fermata \bar "|."
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