\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Delight (P.M.)
  }
  composer = \markup {
    
  }
  tagline = ##f
}

sopranoMusic = {
  \aikenHeadsMinor
  \clef treble
  \key a \minor
  \autoBeamOff
  \time 4/4
  \relative c'' {
    \set Score.tempoHideNote = ##t \tempo 4 = 120
    
    a4 a8[ g] e4 e g g8[ a] b4 \bar "||"
    e c a g8[ a] b4 a1 \bar "||"
    a4 a8[ g] e4 e g g8[ a] b4 \bar "||"
    e c a g8[ a] b4 a1 \bar "||"
    c4 c d d e e8[ d] e4 \bar "||"
    b4 c c a a d c b2^\fermata \bar "||"
    a4 a c c d f e \bar "||"
    d4 e e d8[ c] b4 a1 \bar "|."
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