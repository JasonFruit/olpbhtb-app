\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Merdin (7s.D)
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
  \time 4/4
  \relative c'' {
    \set Score.tempoHideNote = ##t \tempo 4 = 120
    
    \repeat volta 2 {
      g4. g8 g4 g a4. b8 a2 \bar "||"
      b4 d d b a4. g8 g2^\markup { \small { \smallCaps "Fine." } }
    }
    d'4 b8[ c] d4 b8[ c] d4 b a2 \bar "||"
    b4 d e d c b a2^\markup { \small { \smallCaps "D.C." } } \bar "||"
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