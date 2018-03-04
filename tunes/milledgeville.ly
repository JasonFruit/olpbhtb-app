\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Milledgeville (C.M.)
  }
  composer = \markup {
    Andrew Grambling
  }
  tagline = ##f
}

sopranoMusic = {
  \aikenHeadsMinor
  \clef treble
  \key g \minor
  \autoBeamOff
  \time 4/4
  \relative c'' {
    \set Score.tempoHideNote = ##t \tempo 4 = 120
    
    r2 g bes d g, c bes4( a) g2 a \bar "||"
    bes2 d4( bes) d( c) bes2 a g1 \bar "||"
    r2 g bes d f4( d) g2 f4( d) c( bes) a2 \bar "||"
    bes2 d4( bes) d( c) bes2 a g1 \bar "|."
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