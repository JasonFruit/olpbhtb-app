\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    All is Well (P.M.)
  }
  composer = \markup {
    C. Dingley
  }
  tagline = ##f
}

sopranoMusic = {
  \aikenHeads
  \clef treble
  \key a \major
  \autoBeamOff
  \time 6/4
  \relative c'' {
    \set Score.tempoHideNote = ##t \tempo 4 = 120
    
    \repeat volta 2 {
      \partial 4
      a4 a2.~ a2 b4 cis2.~ cis2 a4 gis2 a4 b2 cis4 d2.^\fermata \bar "||"
      cis4( b) a b2.^\fermata a2 gis4 a2.~ a2
    } \break
    cis8[ d] e2 e4 e( d) cis d2 d4 d( cis) \bar "||"
    b cis2 cis4 e( d) cis b2 b4 b( a) \bar "||"
    gis4 a2 gis4 a2 b4 cis2 d4 e2.~ e2. \bar "||"
    cis4( b) a b2.^\fermata a2 gis4 a2.~ a2 \bar "|."
    
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