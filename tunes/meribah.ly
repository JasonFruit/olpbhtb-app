\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Meribah (C.P.M.)
  }
  composer = \markup {
    Lowell Mason
  }
  tagline = ##f
}

sopranoMusic = {
  \aikenHeads
  \clef treble
  \key es \major
  \autoBeamOff
  \time 3/2
  \relative c' {
    \set Score.tempoHideNote = ##t \tempo 4 = 120
    
    \partial 2
    es2 g4. g8 g4 f g aes bes1 \bar "||"
    g2 c4. c8 c4 bes aes g f1 \bar "||"
    bes2 d4 c bes2 a bes1 \bar "||"
    bes2 es4 bes bes g aes c bes1 \bar "||"
    bes2 es4 bes bes g aes c bes1 \bar "||"
    es,2 f4 aes g2 f es1 \bar "|."
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