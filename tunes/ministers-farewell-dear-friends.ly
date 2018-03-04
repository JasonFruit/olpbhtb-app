\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Minister's Farewell (C.M.D.)
  }
  composer = \markup {
    
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
    
    g2 b4 b b2 g b8[ a] g4 e2 \bar "||"
    g2 e4 d e fis g2 \bar "||"
    g2 b4 b b2 g b8[ a] g4 e2 \bar "||"
    g2 e4 d e fis g2 \bar "||" \break
    r2 e' g4 fis e2 d e8[ d] b4 a2 \bar "||"
    g2 b4 a b d e2 \bar "||" \break
    e2 d4 b b2 g b8[ a] g4 e2 \bar "||"
    g2 e4 d e fis g1 \bar "|."
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