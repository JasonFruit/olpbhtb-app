\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Love (C.M.D.)
  }
  composer = \markup {
    
  }
  tagline = ##f
}

sopranoMusic = {
  \aikenHeads
  \clef treble
  \key f \major
  \autoBeamOff
  \time 6/8
  \relative c' {
    \set Score.tempoHideNote = ##t \tempo 4 = 120
    
    \partial 8
    f8 a4 c8 c4 d8 c4 a8 f4 \bar "||"
    f8 g4 g8 a4 g8 f4. r4 \bar "||"
    f8 a4 c8 c4 d8 c4 a8 f4 \bar "||"
    f8 g4 g8 a4 g8 f4. r4 \bar "||"
    c'8 f4 d8 c4 d8 c4 a8 f4 \bar "||"
    c'8 f4 d8 e4 c8 d4. r4 \bar "||" \break
    c8 f4 d8 c4 d8 c4 a8 f4 \bar "||"
    f8 g4 g8 a4 g8 f4. r4 \bar "|."
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