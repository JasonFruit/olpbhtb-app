\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    The Land of Rest (C.M. refrain)
  }
  composer = \markup {
    James Douthit
  }
  tagline = ##f
}

sopranoMusic = {
  \aikenHeads
  \clef treble
  \key c \major
  \autoBeamOff
  \time 4/4
  \relative c'' {
    \set Score.tempoHideNote = ##t \tempo 4 = 120
    
    \partial 4
    g8[ a] c4 e e d8[ c] a4 c c \bar "||"
    b8[ a] g4 c d e d2. \bar "||" \break
    e,8[ f] g4 e' e d8[ c] a4 c c \bar "||"
    b8[ a] g4 c e d c1 \bar "||"
    \break
    g2^\markup { \smallCaps "Refrain: " } a8 c4. d2 e8 c4. \bar "||"
    e2 a,4 c d2. \bar "||" \break
    e,8 f g4 e'8 e e4 d8 c a4 c8 c c4 \bar "||"
    b8 a g4 c8 d e4 d c1 \bar "|."
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