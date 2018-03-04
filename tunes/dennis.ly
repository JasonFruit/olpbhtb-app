\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Dennis (S.M.)
  }
  composer = \markup {
    Lowell Mason
  }
  tagline = ##f
}

sopranoMusic = {
 \aikenHeads
 \clef treble
 \key f \major
 \autoBeamOff
 \time 3/4
 \relative c' {
   \set Score.tempoHideNote = ##t \tempo 4 = 120
   
   \partial 4
   a'4 a( f) a g( e) g f2 \bar "||"
   f4 f( d) f f( c) f e2 \bar "||" \break
   g4 g( e) g f( a) c c( g) bes a( c) \bar "||"
   d4 c( a) bes a( f) g f2^\fermata \bar "|."
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