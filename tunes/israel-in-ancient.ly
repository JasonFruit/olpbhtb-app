\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Voyage (H.M.)
  }
  composer = \markup {
    
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
    
    \partial 2
    a2 g4 e c' a b2. \bar "||"
    c8[ d] e4 e b8[ a] g4 a2 \bar "||"
    a2 g4 e c' a b2. \bar "||"
    c8[ d] e4 e b8[ a] g4 a2 \bar "||"
    c2 d4 d d c8[ d] e4 e b8[ a]  \bar "||"
    g4 c4 b8[ a] e4 d e g a2^\fermata \bar "|."
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