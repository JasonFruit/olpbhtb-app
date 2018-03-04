\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Goble (P.M.)
  }
  composer = \markup {
    
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
    \set Score.tempoHideNote = ##t \tempo 4 = 84
    
    \partial 4
    d8 g g4 b g e d2. \bar "||"
    g8 a b4 b b8 g a b a2. \bar "||"   \break
    b8 c d4 b g b g2. \bar "||"
    g8 a b4 c b8 g a a g2. \bar "||"   \break

    b8^\markup { \small { \smallCaps "Refrain:" } } d d2. b8 a g2. \bar "||"
    g8 a b4 b g b a2. \bar "||"
    b8 c d4 b g b g2. \bar "||"
    g8 a b4 c b8 g a a g2. \bar "|."
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