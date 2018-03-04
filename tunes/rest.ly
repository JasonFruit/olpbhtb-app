\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Rest (L.M.)
  }
  composer = \markup {
    William Bradbury
  }
  tagline = ##f
}

sopranoMusic = {
  \aikenHeads
  \clef treble
  \key d \major
  \autoBeamOff
  \time 3/2
  \relative c'' {
    \set Score.tempoHideNote = ##t \tempo 4 = 120
    
    \partial 2.
    a4 a a d2 a a4 fis e2. \bar "||"
    g4 g g e'2 cis b4 cis d2. \bar "||"
    a4 a a a2 fis g4 a b2. \bar "||"
    b4 d b a fis e2 g fis2. \bar "|."
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