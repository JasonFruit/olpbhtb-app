\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Balerma (C.M.)
  }
  composer = \markup {
    Richard Simpson
  }
  tagline = ##f
}

sopranoMusic = {
  \aikenHeads
  \clef treble
  \key bes \major
  \autoBeamOff
  \time 3/2
  \relative c' {
    \set Score.tempoHideNote = ##t \tempo 4 = 120
    
    \partial 2
    bes'2 d1 c2 bes1 g2 f1 g4( a) bes1 \bar "||"
    c2 d1 c2 d( f) d c1 \bar "||" \break
    c2 d1 c2 bes1 g2 f1 d2 f1 \bar "||"
    c'2 d( f) d c2.( bes4) c2 bes1 \bar "|."
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