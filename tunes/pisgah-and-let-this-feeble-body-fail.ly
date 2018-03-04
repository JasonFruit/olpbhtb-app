\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Pisgah (C.M.)
  }
  composer = \markup {
    Kentucky Harmony
  }
  tagline = ##f
}

sopranoMusic = {
 \aikenHeads
 \clef treble
 \key a \major
 \autoBeamOff
 \time 4/4
 \relative c' {
   \set Score.tempoHideNote = ##t \tempo 4 = 120
   
   \partial 4
   e4 a a a8[ b] cis[ a] fis4 fis fis8[ e] \bar "||"
   cis4 e e fis a cis8.([ b16 a8 cis] b4) \bar "||"
   a8[ cis] e4 e e fis8[ e] cis4 cis b \bar "||"
   a4 fis a8[ fis] e4 fis8[ gis] a2. \bar "|."
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