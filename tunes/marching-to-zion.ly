\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Marching to Zion (S.M. refrain)
  }
  composer = \markup {
    Robert Lowry
  }
  tagline = ##f
}

sopranoMusic = {
  \aikenHeads
  \clef treble
  \key g \major
  \autoBeamOff
  \time 6/8
  \relative c'' {
    \set Score.tempoHideNote = ##t \tempo 4 = 120
    
    \partial 8
    g8 b4. g d8[ e] fis g4 \bar "||"
    a8 b4 g8 d'[ c] b a4.~ a4 \bar "||"
    a8 b4 b8 c4 b8 a4 g8 e4 \bar "||"
    g8 a4 a8 b4 a8 g4 e8 d4 \bar "||"
    d8 g4. a b4 d8 c4 \bar "||"
    a8 g4 g8 a4 fis8 g4.~ g4 \bar "||"

    b8^\markup { \smallCaps "Refrain:" } d4. b4 b8 b4. g4 r8 \bar "||"
    b8. a16 g8 d'8. c16 b8 a4. d4 \bar "||"
    c8 b4 b8 b c d e4. e8[ d] \bar "||"
    c8 b8. b16 b8 a16 a8. a8 g4.~ g4 \bar "|."
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