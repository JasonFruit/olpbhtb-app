\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Plenary (C.M.)
  }
  composer = \markup {
    Scottish
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
    
    r2 d2 g4. g8 g4 b a4. g8 a4 \bar "||"
    b4 g g b d e2 \bar "||" \break
    g2 d4. b8 b4 g a4. g8 a4  \bar "||"
    b4 g4. e8 e4 d g2 \bar "||" \break
    e'2 d4. b8 b4 g a4.( g8 a4) \bar "||"
    e'4 d4. b8 b4 d e2 \bar "||" \break
    g2 d4. b8 b4 g a4. g8 a4 \bar "||"
    b4 g4. e8 e4 d g1 \bar "|."
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