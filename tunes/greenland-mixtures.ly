\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Greenland (7.6.7.6.D)
  }
  composer = \markup {
    Lowell Mason
  }
  tagline = ##f
}

sopranoMusic = {
  \aikenHeads
  \clef treble
  \key f \major
  \autoBeamOff
  \time 2/2
  \relative c' {
    \set Score.tempoHideNote = ##t \tempo 4 = 120
    
    \partial 2
    f2 a4 c c d c2 a4 \bar "||"
    f4 e f bes a a2( g4) \bar "||"
    f4 a c c d c2 a4 \bar "||"
    g4 a d c b c2 \bar "||" \break
    c2 f4 c bes a d2 c4 \bar "||"
    e4 f c c8[ bes] a4 a2( g4) \bar "||"
    f4 a c c d c2 a4 \bar "||"
    f4 g bes a g f2 \bar "|."
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