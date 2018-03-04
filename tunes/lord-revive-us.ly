\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Lord, Revive Us (8.7.8.7.D)
  }
  composer = \markup {
    
  }
  tagline = ##f
}

sopranoMusic = {
  \aikenHeads
  \clef treble
  \key f \major
  \autoBeamOff
  \time 3/4
  \relative c' {
    \set Score.tempoHideNote = ##t \tempo 4 = 120
    
    \repeat volta 2 {
      \partial 4
      f8 f a4 a f8^\segno f g[ f] d4 \bar "||"
      f8 f a4 c f,8 f f2^\markup { \small { \smallCaps "Fine." } }
    }
    c'8 d16[ e] f4 e d8 c d[ c] a4 \bar "||"
    c8 d16[ e] f4 e d8 c d2 \bar "||"
    f8 d c4 \mark \markup { \small { \smallCaps "D.S. al Fine" } } a \bar "|"
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