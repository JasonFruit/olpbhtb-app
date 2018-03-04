\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Protection (11s)
  }
  composer = \markup {
    
  }
  tagline = ##f
}

sopranoMusic = {
  \aikenHeads
  \clef treble
  \key bes \major
  \autoBeamOff
  \time 4/4
  \relative c' {
    \set Score.tempoHideNote = ##t \tempo 4 = 120
    
    \partial 2
    f4( g) bes2 g4 bes f4.( g8) bes4 c d2 c4 d f,2 \bar "||"
    f4( g) bes2 g4 bes f4.( g8) bes4 c d2 c4 c bes2 \bar "||"
    d2 f d4 f bes,2 bes4 bes d2 c4 d f,2 \bar "||"
    f4( g) bes2 g4 bes f4.( g8) bes4 c d2 c4 c bes2 \bar "|."
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