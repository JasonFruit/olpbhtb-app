\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Sweet Harmony (P.M.)
  }
  composer = \markup {
    William Walker
  }
  tagline = ##f
}

sopranoMusic = {
  \aikenHeads
  \clef treble
  \key g \major
  \autoBeamOff
  \time 6/4
  \relative c' {
    \set Score.tempoHideNote = ##t \tempo 4 = 120
    
    \partial 4
    d4 g4 g a g2 b4 d d d b2 \bar "||"
    d4 g e d e b a b d e d2 \bar "||"
    d4 g e d b2 a4 g g d d2 \bar "||"
    d4 g b^\fermata g8[ a] b4 d^\fermata e8[ d] b4 g a g2 \bar "|."
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