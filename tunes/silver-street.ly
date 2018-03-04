\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Silver Street (S.M.)
  }
  composer = \markup {
    Isaac Smith
  }
  tagline = ##f
}

sopranoMusic = {
  \aikenHeads
  \clef treble
  \key c \major
  \autoBeamOff
  \time 2/2
  \relative c'' {
    \set Score.tempoHideNote = ##t \tempo 4 = 120
    
    c2 g4 g e2 g c2. \bar "||"
    e4 d2 g, c4( a) g( fis) g2. \bar "||"
    g4 c2 e c2. g4 a( g) a8([ b] c4) b2. \bar "||"
    g4 a( b c) f e2 d c1 \bar "|."
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