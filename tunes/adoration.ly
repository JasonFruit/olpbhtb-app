\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Adoration (11.8.11.8.)
  }
  composer = \markup {
    
  }
  tagline = ##f
}

sopranoMusic = {
  \aikenHeads
  \clef treble
  \key c \major
  \autoBeamOff
  \time 2/4
  \relative c'' {
    \set Score.tempoHideNote = ##t \tempo 4 = 88
    
    \partial 8
    g8 g4 e8 g c4 b8 a g4 a8 g e4. \bar "||"
    g8 c4 g8 c e4 c8 e d4. \bar "||"
    d8 e4 d8 c c4 b8 a g4 a8 g e4. \bar "||"
    g8 c4 g8 c e4 d8 d c4. \bar "|."
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