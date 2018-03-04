\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Consolation (C.M.)
  }
  composer = \markup {
    Elkanah Dare
  }
  tagline = ##f
}

sopranoMusic = {
 \aikenHeadsMinor
 \clef treble
 \key a \minor
 \autoBeamOff
 \time 4/4
 \relative c' {
   \set Score.tempoHideNote = ##t \tempo 4 = 120
   
   \partial 4
   e4 a b c d8[ c] b4 a8[ g] e4 \bar "||"
   e4 a b c d e2. \bar "||"
   c8[ d] e4 f8[ e] d4 c b a8[ g] e4 \bar "||"
   e4 a b c8[ a] b4 a2. \bar "|."
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