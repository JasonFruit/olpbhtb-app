\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Guide (7.7.7.7.)
  }
  composer = \markup {
    Marcus Wells
  }
  tagline = ##f
}

sopranoMusic = {
  \aikenHeads
  \clef treble
  \key g \major
  \autoBeamOff
  \time 3/4
  \relative c' {
    \set Score.tempoHideNote = ##t \tempo 4 = 120
    
    d2 d4 g2 g4 b4.( a8) g4 a2. \bar "||"
    b2 b4 d2 g,4 fis4.( g8) a4 g2. \bar "||" \break
    d2 d4 g2 g4 b4.( a8) g4 a2. \bar "||"
    b2 b4 d2 g,4 fis4.( g8) a4 g2. \bar "||" \break
    c2 c4 b2 b4 a4.( b8) c4 b2. \bar "||"
    d2 d4 b2 b4 c2 b4 a2. \bar "||" \break
    d,2 d4 g2 g4 b4.( a8) g4 a2. \bar "||"
    b2 b4 d2 g,4 fis4.( g8) a4 g2. \bar "|."
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