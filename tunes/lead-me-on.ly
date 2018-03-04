\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Lead Me On (P.M.)
  }
  composer = \markup {
    C. E. Pollock
  }
  tagline = ##f
}

sopranoMusic = {
  \aikenHeads
  \clef treble
  \key g \major
  \autoBeamOff
  \time 4/4
  \relative c' {
    \set Score.tempoHideNote = ##t \tempo 4 = 120
    
    \partial 4
    d8. d16 g4 g g g8. a16 b4 b b \bar "||"
    b8. b16 a4 a a b8. a16 g4 e d \bar "||"
    d8. d16 g4 g g g8. a16 b4 b b \bar "||"
    b8. b16 a4 a a g8. a16 b4 a g^\fermata \bar "||"
    \break
    b8.^\markup { \smallCaps { "Refrain:" } } c16 d2. e8. d16 b2. \bar "||"
    b8. c16 d4 d d b a2. \bar "||"
    b8. c16 d2. e8. d16 b2. \bar "||"
    g8. a16 b4 b b a g2. \bar "|."
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