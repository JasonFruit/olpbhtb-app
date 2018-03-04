\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Fredericksburg (H.M.)
  }
  composer = \markup {
    R.M. McIntosh
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
    e4 a4. a8 a b cis2 \bar "||"
    a4 b8 b cis4 b a2 \bar "||"
    cis4 e4. d8 cis a b2 \bar "||"
    b4 b4. b8 a b cis4. \bar "||" \mark \markup { \small { \smallCaps "Refrain:" } }
    e8 cis a e'2.~ e4. gis,8 a gis a2.~ a4. \bar "||"
    e'8 fis e cis2.~ cis2 a4 b( a) gis a2 \bar "|."
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