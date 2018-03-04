\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Kingwood (C.P.M.)
  }
  composer = \markup {
    Joseph Humphreys
  }
  tagline = ##f
}

sopranoMusic = {
  \aikenHeads
  \clef treble
  \key a \major
  \autoBeamOff
  \time 6/4
  \relative c' {
    \set Score.tempoHideNote = ##t \tempo 4 = 120
    
    \partial 2.
    e2. a2 a4 a( gis) a b2 b4 b( a) \bar "||"
    b4 cis2 cis4 b2 a4 e2 e4 e2 \bar "||"
    e4\segno a2 a4 a( gis) a b2 b4 b( a) \bar "||"
    b4 cis2 cis4 b( a) b a2.^\markup { \small { \smallCaps "Fine." } } \bar "|."

    cis2. e2 cis4 cis( b) a cis2 a4 a2 \bar "||"
    b4 cis2 cis4 b2 a4 e2 e4 e2.^\markup { \small { "D.S." } } \bar "||"
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