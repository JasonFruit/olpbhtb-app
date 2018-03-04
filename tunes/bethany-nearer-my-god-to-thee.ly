\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Bethany (6s,4s)
  }
  composer = \markup {
    Lowell Mason
  }
  tagline = ##f
}

sopranoMusic = {
  \aikenHeads
  \clef treble
  \key g \major
  \autoBeamOff
  \time 4/4
  \relative c'' {
    \set Score.tempoHideNote = ##t \tempo 4 = 120
    
    b2 a4 g g4. e8 e2 \bar "||"
    d2 g4 b a2. r4 \bar "||"
    b2 a4 g g4. e8 e2 \bar "||"
    d4( g) fis a g2. r4 \bar "||"
    d'2 e4 d d4. b8 d2 \bar "||"
    d2 e4 d d4. b8 a2 \bar "||"
    b2 a4 g g4. e8 e2 \bar "||"
    d4( g) fis a g2. r4 \bar "|."
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