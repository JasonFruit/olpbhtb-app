\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    It Is I (P.M.)
  }
  composer = \markup {
    A. S. Kieffer,
  }
  tagline = ##f
}

sopranoMusic = {
  \aikenHeads
  \clef treble
  \key a \major
  \autoBeamOff
  \time 4/4
  \relative c'' {
    \set Score.tempoHideNote = ##t \tempo 4 = 120
    
    \partial 4
    cis8( b) a4 a8 a a4 a8 cis b4 b8 cis b4 \bar "||"
    cis8( d) e4 e8 cis a4 a8 cis b2. \bar "||"
    cis8( b) a4 a8 a a4 a8 cis b4 b8 cis b4 \bar "||"
    cis8 d e4 e8 cis a4 cis8 b a2. \bar "||"
    \break
    cis8^\markup { \smallCaps "Refrain:" } d e4.( cis8 d4) cis8 b a4.( b8 cis4) \bar "||"
    cis8[ b] a4 a8 a a4 b8 cis b2. \bar "||"
    \break
    cis8 b a4 a8 fis e4 cis'8 b a4 a8 fis e4 \bar "||"
    cis'8[ d] e4 e8 cis a4 cis8 b a2. \bar "|."
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