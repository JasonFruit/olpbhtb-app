\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    NICÆA (Irregular)
  }
  composer = \markup {
    John Dykes
  }
  tagline = ##f
}

sopranoMusic = {
  \aikenHeads
  \clef treble
  \key e \major
  \autoBeamOff
  \time 4/4
  \relative c' {
    \set Score.tempoHideNote = ##t \tempo 4 = 120
    
    e4 e gis gis b2 b
    cis4( cis) cis cis b2 gis \bar "||"
    b4. b8 b4 b e( e) dis b fis b cis4. b8 b1 \bar "||"
    e,4 e gis gis b4( b) b2
    cis4. cis8 cis4 cis b2 b \bar "||"
    e2 b4 b cis2 gis a4 fis fis4. e8 e1 \bar "|."
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