\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    New Britain (C.M.)
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
 \time 3/4
 \relative c' {
   \set Score.tempoHideNote = ##t \tempo 4 = 120
   
   \partial 4
   e4
   a2 cis8[ a] cis2 b4 a2 fis4 e2 \bar "||"
   e4 a2 cis8[ a] cis2 b8[ cis]  e2\fermata \bar "||"
   cis4 e2 cis8[ e] a,2 fis8[ e] a2 fis4 e2 \bar "||"
   e4 a2 cis8[ a] cis2 b4 a2\fermata  \bar "|."
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