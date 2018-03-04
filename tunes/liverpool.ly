\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Liverpool (C.M.)
  }
  composer = \markup {
    M.C.H. Davis
  }
  tagline = ##f
}

sopranoMusic = {
 \aikenHeads
 \clef treble
 \key f \major
 \autoBeamOff
 \time 4/4
 \relative c' {
   \set Score.tempoHideNote = ##t \tempo 4 = 120
   
   f2 f8[ g] a4 c2 d c4 a8[ g] f2 \bar "||"
   c'4.( d8) f4 f e8[ d] c4 d2~ d2
   d2 c4 d f2 c a4 d c2 \bar "||"
   d4( c) a4. f8 g4 g f1 \bar "|."
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