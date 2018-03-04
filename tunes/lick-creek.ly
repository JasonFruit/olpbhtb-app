\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Lick Creek (P.M.)
  }
  composer = \markup {
    Jason Fruit
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
    
    \partial 4
    \repeat volta 2 {
      e4 a2 fis4 e2 e'4 cis2 b8[ cis] a2 \bar "||"
    }
    \alternative {
      {
	a4 cis2 e8[ cis] b4( cis) a cis2 b8[ a] fis2
      }
      {
	a8[ b] cis2 e8[ cis] b4( a) fis e2. e2^\markup{ \small { \smallCaps "Fine." } } \bar "|."
      }
    }
    e'4 e2 e4 cis2 e4 fis2 e8[ cis] e2 \bar "||"
    a,4 cis2 cis4 b2 a8[ b] cis2 b8[ a] fis2^\markup { \small "D.C." } \bar "||"
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