\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Upton (L.M.)
  }
  composer = \markup {
    Lowell Mason
  }
  tagline = ##f
}

sopranoMusic = {
 \aikenHeads
 \clef treble
 \key a \major
 \autoBeamOff
 \time 4/4
 \relative c'' {
   \set Score.tempoHideNote = ##t \tempo 4 = 120
   
   \partial 2
   a2 cis4 e d b a2 gis a \bar "||"
   b2 cis4 b a b cis2 d e \bar "||"
   e2 d4 cis b a d2 cis b \bar "||"
   e2 a,4 b cis d cis2 b a^\fermata \bar "|."
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