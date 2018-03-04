\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Eltham (7s. D.)
  }
  composer = \markup {
    Lowell Mason
  }
  tagline = ##f
}

sopranoMusic = {
  \aikenHeads
  \clef treble
  \key g \major
  \autoBeamOff
  \time 3/2
  \relative c' {
    \set Score.tempoHideNote = ##t \tempo 4 = 120
    
    \repeat volta 2 {
      \partial 2
      d4 g b2. g4 d' d b1 \bar "||"
      d,4 g b g a2 b4( a) }
    \alternative {
      { g1^\markup { \tiny { \smallCaps "Fine." } } s2 }
      { g1. }
    }
    \bar "||" \break
    d'4. d8 d4 b c b b2( a) r \bar "||"
    b4. b8 b4 g a g g2( fis^\markup { \tiny "D.C." })  \bar "||"
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