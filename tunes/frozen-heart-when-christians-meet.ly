\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Frozen Heart (L.M.)
  }
  composer = \markup {
    
  }
  tagline = ##f
}

sopranoMusic = {
  \aikenHeads
  \clef treble
  \key d \major
  \autoBeamOff
  \time 6/4
  \relative c' {
    \set Score.tempoHideNote = ##t \tempo 4 = 120
    
    \partial 4
    fis4 a2 a4 fis( e) fis a2 d,4 d2 \bar "||"
    a'4 d2 e4 fis( e) d e2 cis4 a2 \bar "||"
    a4 d2 e4 fis( e) d e2 a,4 b( d^\fermata) \bar "||"
    b4 a2 a4 fis( e) fis a2 d,4 d2 \bar "|."
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