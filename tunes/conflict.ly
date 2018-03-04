\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Conflict (L.M.)
  }
  composer = \markup {
    Freeman Lewis
  }
  tagline = ##f
}

sopranoMusic = {
 \aikenHeads
 \clef treble
 \key bes \major
 \autoBeamOff
 \time 4/4
 \relative c' {
   \set Score.tempoHideNote = ##t \tempo 4 = 120
   
   \partial 2
   f2 g4 g bes2 c4( bes) g f g2 \bar "||"
   f2 g4 g bes2 g bes4 c d2 \bar "||"
   d2 f4 f d2 c4( d) bes g f2 \bar "||"
   d4( f) g4 g bes2 c4( bes) g f g2 \bar "|."
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