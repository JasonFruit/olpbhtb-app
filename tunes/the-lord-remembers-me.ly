\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    The Lord Remembers (P.M.)
  }
  composer = \markup {
    John R. Daily
  }
  tagline = ##f
}

sopranoMusic = {
  \aikenHeads
  \clef treble
  \key a \major
  \autoBeamOff
  \time 3/4
  \relative c' {
    \set Score.tempoHideNote = ##t \tempo 4 = 120
    
    \partial 4
    e4 a8 a cis4 a fis8 a e4 \bar "||"
    e4 a8 cis e4 cis b8 a b4 \bar "||" \break
    cis4 e8 e cis4 a b8 a fis4 \bar "||"
    fis4 e8 a cis4 b a2 \bar "||" \break

    e4^\markup { \small { \smallCaps "Refrain:" } } a8 a cis4 a e'2 \bar "||"
    cis4 e8 fis e4 cis b2 \bar "||" \break
    cis4 e8 e cis4 a b8 a fis4 \bar "||"
    fis4 e8 a cis4 b a2 \bar "|."
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