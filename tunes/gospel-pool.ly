\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Gospel Pool (S.M.)
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
  \time 6/4
  \relative c'' {
    \set Score.tempoHideNote = ##t \tempo 4 = 120
    
    \partial 2.
    a2. c4( b) c a2 g4 a2. \bar "||"
    e'2. g4( e) e d( c) d e2.^\fermata \bar "||"
    e2. g4( e) e d2 c4 a2 c4 g( e) \bar "||"
    g4 a2 c4 e,2 g4 a2. \bar "|."
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