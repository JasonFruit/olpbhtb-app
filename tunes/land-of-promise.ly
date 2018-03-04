\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Land of Promise (C.M.)
  }
  composer = \markup {
    A. S. Kieffer
  }
  tagline = ##f
}

sopranoMusic = {
  \aikenHeads
  \clef treble
  \key f \major
  \autoBeamOff
  \time 4/4
  \relative c' {
    \set Score.tempoHideNote = ##t \tempo 4 = 120
    
    \repeat volta 2 {
      \partial 4
      f4 c' a d c f, f8[ g] a4 \bar "||"
      a4 c4. a8 g4 g f2.^\markup { \tiny { \smallCaps "Fine." } }
    }
    c'4 f c a c f, f8[ g] a4 \bar "||"
    c f4. e8 d4 d c2. \mark \markup { \tiny "D.C." } \bar "||"
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