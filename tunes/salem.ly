\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Salem (L.M.)
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
  \time 3/2
  \relative c'' {
    \set Score.tempoHideNote = ##t \tempo 4 = 120
    
    \partial 2
    a2 g4 f e2 a4.( c8) b4 b a2 \bar "||"
    a2 b4 e d2 c4.( a8) g4 a b2^\fermata \bar "||"
    e,2 c'4 d e2 c4( a) b e, d2 \bar "||"
    e2 c4 d e2 a4.( c8) b4 b a2 \bar "|."
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