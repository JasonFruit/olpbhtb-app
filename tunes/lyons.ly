\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Lyons (10.10.11.11)
  }
  composer = \markup {
    Joseph Kraus
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
    e4 a a b cis2 a4 d d cis b2 \bar "||"
    e,4 a a b cis2 d4 e8.[ d16] cis4 b a2 \bar "||"
    e4 e e fis gis gis a b b cis d2 \bar "||"
    e,4 a a b cis cis d e8.[ d16] cis4 b a2 \bar "|."
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