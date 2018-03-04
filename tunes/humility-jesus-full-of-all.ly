\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Humility (8.7.8.7.D)
  }
  composer = \markup {
    
  }
  tagline = ##f
}

sopranoMusic = {
  \aikenHeadsMinor
  \clef treble
  \key e \minor
  \autoBeamOff
  \time 6/4
  \relative c'' {
    \set Score.tempoHideNote = ##t \tempo 4 = 120
    
    b2 g4 e2 g4 a2 g4 a b2 \bar "||"
    c2 a4 b2 b8[ a] g2 fis4 e2. \bar "||"
    b'2 g4 e2 g4 a2 g4 a b2 \bar "||"
    c2 a4 b2 b8[ a] g2 fis4 e2. \bar "||"
    b'2 c4 d( b) d e2 d4 c b2 \bar "||"
    b2 c4 d( c) b a( g) a b2. \bar "||"
    b2 g4 e2 g4 a2 g4 a b2 \bar "||"
    c2 a4 b2 b8[ a] g2 fis4 e2. \bar "|."
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