\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    The Rock that is Higher than I (11s)
  }
  composer = \markup {
    
  }
  tagline = ##f
}

sopranoMusic = {
  \aikenHeads
  \clef treble
  \key a \major
  \autoBeamOff
  \time 2/2
  \relative c' {
    \set Score.tempoHideNote = ##t \tempo 4 = 132
    
    \partial 2
    e2 a a4 a a2 gis4 a b2 e,4 e e2 \bar "||"
    cis'2 d4( cis) b a d2 cis4 b cis2 a4. a8 a2^\fermata \bar "||"
    cis4( d) e2 e4 e e2 d4 cis d2 d4 d d( cis^\fermata) \bar "||"
    e2 cis b4 a d2 cis4 b cis2 a4. a8 a1 \bar "||"
    b2 b4. b8 b4( a) r2 e'2 e4. e8 e2^\fermata \bar "||"
    cis2 d4( cis) b a d2 cis4 b cis2 a4. a8 a2  \bar "|."
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