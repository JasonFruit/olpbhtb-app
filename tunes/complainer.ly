\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Complainer (7.6.7.6.D)
  }
  composer = \markup {
    William Walker
  }
  tagline = ##f
}

sopranoMusic = {
  \aikenHeads
  \clef treble
  \key g \major
  \autoBeamOff
  \time 4/4
  \relative c' {
    \set Score.tempoHideNote = ##t \tempo 4 = 120
    
    r2 d2 g4 g b d e2 d4 b d4. b8 a4 g b2 \bar "||"
    d,2 g4 g b d e2 d4 b d4. b8 a4 a g2 \bar "||"
    d'2 e4 d d8[ e] fis4 g2 d4 b d4. b8 a4 g b2 \bar "||"
    d,2 g4 g b d e2 d4 b d4. b8 a4 a g1 \bar "|."
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