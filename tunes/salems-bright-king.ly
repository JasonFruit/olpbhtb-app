\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Salem's Bright King (C.P.M.)
  }
  composer = \markup {
    
  }
  tagline = ##f
}

sopranoMusic = {
  \aikenHeadsMinor
  \clef treble
  \key g \minor
  \autoBeamOff
  \time 6/4
  \relative c' {
    \set Score.tempoHideNote = ##t \tempo 4 = 120
    
    \partial 4
    d4 g2 g4 bes2 c4 d2 d4 c( bes) \bar "||"
    c4 d2 g,4 bes2 a4 g2 g4 fis( d) \bar "||"
    fis4 g2 g4 bes2 c4 d2 d4 c( bes) \bar "||"
    c4 d2 g,4 bes2 a4 g2.~ g2 \bar "||" \break

    d'4 f2 f4 d2 f4 g2 g4 d2 \bar "||"
    c4 d2 g,4 bes2 a4 g2 g4 fis4( d) \bar "||"
    fis4 g2 g4 bes2 c4 d2 d4 c( bes) \bar "||"
    c4 d2 g,4 bes2 a4 g2.~ g2 \bar "|."
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