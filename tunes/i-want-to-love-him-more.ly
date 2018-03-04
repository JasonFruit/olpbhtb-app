\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    I Want to Love Him More (P.M.)
  }
  composer = \markup {
    Howard Smith
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
    
    \partial 4
    g4 b4. a8 g4. d8 e4 g d \bar "||"
    g b4. b8 d4 d a2. \bar "||" \break
    g4 b4. a8 g4. d8 e4 g d \bar "||"
    g4 b4. c8 b4 a g2. \bar "||" \break

    b4^\markup { \smallCaps "Refrain:" } d4. d8 e4 e d2. \bar "||"
    g,4 b4. d8 c4 b a2. \bar "||" \break
    b4 d4. d8 e4 e d c b \bar "||"
    e4 d4. c8 b4 a g2. \bar "|."
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