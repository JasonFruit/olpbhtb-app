\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Melody (24th) (C.M.)
  }
  composer = \markup {
    Amzi Chapin
  }
  tagline = ##f
}

sopranoMusic = {
 \aikenHeads
 \clef treble
 \key a \major
 \autoBeamOff
 \time 3/2
 \relative c' {
   \set Score.tempoHideNote = ##t \tempo 4 = 120
   
   \partial 2
   e2 a4 b cis2 b4.( cis8) a4 fis e2 \bar "||"
   e2 a4 b cis2 d e1 \bar "||"
   e2 d4 cis8[ b] cis2 b4.( cis8) a4 fis e2 \bar "||"
   e2 a4 b cis2 b a1 \bar "|."
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