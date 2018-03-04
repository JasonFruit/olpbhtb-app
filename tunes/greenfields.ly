\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Green Fields (8s.D)
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
  \time 6/8
  \relative c'' {
    \set Score.tempoHideNote = ##t \tempo 4 = 72
    
    \repeat volta 2 {
      \partial 4.
      g4. g8 d g b g b d4. \bar "||"
      c4. b8 d b a g a g4.^\markup { \tiny { \smallCaps "Fine." } } 
    }
    d'4. d8 b d d b d e4. \bar "||"
    c4. b8 c d d c b a4.^\markup { \tiny "D.C." } \bar "||"
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