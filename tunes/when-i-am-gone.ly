\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    When I Am Gone (P.M.)
  }
  composer = \markup {
    Thomas Bayly
  }
  tagline = ##f
}

sopranoMusic = {
  \aikenHeads
  \clef treble
  \key aes \major
  \autoBeamOff
  \time 4/4
  \relative c'' {
    \set Score.tempoHideNote = ##t \tempo 4 = 120
    
    \repeat volta 2 {
      aes4 aes8 bes c4 c8 des es4 f8 es c2 \bar "||"
      es4 des8 c bes2 des4 c8 bes aes2^\markup { \small { \smallCaps "Fine" } }
    }
    es'4 des8 c bes4 es,8 es des'4 c8 bes aes2 \bar "||"
    es'4 des8 c bes4 es,8 es des'4 c8 bes aes2^\markup { \small "D.C." } \bar "||"
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