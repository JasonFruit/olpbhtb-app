\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Preservation (C.M. refrain)
  }
  composer = \markup {
    John R. Daily
  }
  tagline = ##f
}

sopranoMusic = {
  \aikenHeads
  \clef treble
  \key es \major
  \autoBeamOff
  \time 4/4
  \relative c' {
    \set Score.tempoHideNote = ##t \tempo 4 = 120
    
    \repeat volta 2 {
      \partial 4
      es4 g g es g bes bes g \bar "||"
      bes4 c8[ bes] es,4 g f es2.^\markup { \tiny { \smallCaps "Fine." } }
    }
    bes'4 c c es c bes4.( g8 bes4) \bar "||"
    bes4 c c es c bes2.\mark \markup { \tiny "D.C." } \bar "||"
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