\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Manoah (C.M.)
  }
  composer = \markup {
    Henry Greatorex
  }
  tagline = ##f
}

sopranoMusic = {
 \aikenHeads
 \clef treble
 \key a \major
 \autoBeamOff
 \time 3/4
 \relative c'' {
   \set Score.tempoHideNote = ##t \tempo 4 = 120
   
   \partial 4
   a8[ b] cis2 b4 a2 gis4 gis2 fis4 fis2 \bar "||"
   b8[ cis] d2 cis4 b2 a4 a( gis) \bar "||"
   e4 cis'2 b4 d2 cis4 fis2 cis4 e( d) \bar "||"
   b4 a2 e4 cis'2 b4 a2 \bar "|."
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