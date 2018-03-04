\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Evening Shade (S.M.)
  }
  composer = \markup {
    Stephen Jenks
  }
  tagline = ##f
}

sopranoMusic = {
  \aikenHeadsMinor
  \clef treble
  \key e \minor
  \autoBeamOff
  \time 4/4
  \relative c' {
    \set Score.tempoHideNote = ##t \tempo 4 = 120
    
    e1 g4.( a8 b4) d e2 d e2. \bar "||"
    b4 a a a g8[ a] b2. \bar "||"
    g8[ a] b[ a] g[ fis] e2~ e2. \bar "||"
    g8[ a] b[ e] d4 e2~ e2. \bar "||"
    b4 d d d c b8[ a] g[ a] b4 \bar "||"
    d4 e b a8[ fis] d4 e1 \bar "|."
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