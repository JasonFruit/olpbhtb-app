\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Arlington (C.M.)
  }
  composer = \markup {
    Thomas Arne
  }
  tagline = ##f
}

sopranoMusic = {
 \aikenHeads
 \clef treble
 \key g \major
 \autoBeamOff
 \time 3/2
 \relative c'' {
   \set Score.tempoHideNote = ##t \tempo 4 = 120
   
   \partial 2
   g2 b4. b8 b2 a g4. g8 g2 \bar "||"
   a2 b4 d c2 b b( a^\fermata) \bar "||" \break
   c2 b4. b8 b2 e d4. d8 d2 \bar "||"
   g,2 a4 c b2 a g1 \bar "|."
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