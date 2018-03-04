\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    House of the Lord (P.M.)
  }
  composer = \markup {
    Austin Lane
  }
  tagline = ##f
}

sopranoMusic = {
  \aikenHeadsMinor
  \clef treble
  \key e \minor
  \autoBeamOff
  \time 4/4
  \relative c'' {
    \set Score.tempoHideNote = ##t \tempo 4 = 120
    
    \partial 2 g4 a b2 b4 g a( g) e g b2 e,4 d e2 \bar "||"
    g4 a b2 b4 g a( g) e g b2 e,4 d e2 \bar "||"
    b'4 d e2 g4 b, d2 b4 g b2 a4 b d2 \bar "||"
    b4 d e2 g4 b, d2 b4 g b2 e,4 d e2 \bar "|."
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