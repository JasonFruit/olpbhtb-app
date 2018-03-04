\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    The Prodigal (C.M.D.)
  }
  composer = \markup {
    
  }
  tagline = ##f
}

sopranoMusic = {
  \aikenHeads
  \clef treble
  \key d \major
  \autoBeamOff
  \time 6/4
  \relative c'' {
    \set Score.tempoHideNote = ##t \tempo 4 = 120
    
    \partial 4
    \repeat volta 2 {
      a4 d2 d4 cis( b) a d2 d4 fis,2 \bar "||"
      g4 a( b) a g( fis) e d2.~ d2^\markup { \small { \smallCaps { "Fine." } } }
    }
    d'4 fis2 e4 d2 a4 d2 d4 d2 \bar "||"
    d4 fis2 e4 d2 fis4 e2.~ e2^\markup { \small { "D.C." } } \bar "||"
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