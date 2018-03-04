\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Kedron (L.M.)
  }
  composer = \markup {
    Elkanah Dare
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
    
    g4.( fis8) e4 e b'2 b a4 g fis2 \bar "||"
    g4.( fis8) e4 e e'2 fis8( e4.) d4 c b2^\fermata \bar "||"
    e2 d4 e b2 g d'4 b a2 \bar "||"
    a2 b4 e, g4.( a8) b4.( a8) g4 fis e2^\fermata \bar "|."
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