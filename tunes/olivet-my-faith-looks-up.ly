\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Olivet (P.M.)
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
  \time 4/4
  \relative c' {
    \set Score.tempoHideNote = ##t \tempo 4 = 120
    
    es2 g4 bes bes4. aes8 g2 \bar "||"
    f2 f4 aes aes4. g8 f2 \bar "||"
    g2 f4 c' bes1 \bar "||"
    bes2 g4 aes bes4. c8 bes2 \bar "||"
    bes2 g4 aes bes4. c8 bes2 \bar "||"
    es2 d4 c bes4. aes8 g4 \bar "||"
    es4 f2 bes es,1 \bar "|."
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