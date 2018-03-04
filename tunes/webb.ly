\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Webb (7s,6s.D)
  }
  composer = \markup {
    George Webb
  }
  tagline = ##f
}

sopranoMusic = {
  \aikenHeads
  \clef treble
  \key bes \major
  \autoBeamOff
  \time 4/4
  \relative c' {
    \set Score.tempoHideNote = ##t \tempo 4 = 120
    
    \partial 4
    f4 bes4. bes8 d4 bes bes2 g4 \bar "||"
    bes4 f bes c d c2 r4 \bar "||"
    f,4\segno bes4. bes8 d4 bes bes2 g4 \bar "||"
    bes4 f bes d c bes2 r4^\markup { \tiny { \smallCaps "Fine." } } \bar "|."
    f4 c'4. c8 bes4 c d2 d4 \bar "||"
    d4 es d g, c bes2( a4^\markup { \tiny "D.S." } ) \bar "||"
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