\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Close to Thee (P.M.)
  }
  composer = \markup {
    S. J. Vail
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
    
    \partial 4
    d8. g16 b4. g8 fis8. a16 g4 d \bar "||"
    g8. b16 d4. b8 g8. b16 a2 \bar "||" \break 
    d,8. g16 b4. b8 b8. d16 d4 c \bar "||"
    b8. a16 g4. b8 b8. a16 g2 \bar "||" \break

    fis8.^\markup { \smallCaps "Refrain:" } g16 a2 c8. fis,16 g2 \bar "||"
    b8. c16 d2 d8. b16 \noBreak a2 \bar "||"
    d,8. g16 b4. b8 b8. d16 d4 c \bar "||" \break
    b8. a16 g4. b8 b8. a16 g2 \bar "|."
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