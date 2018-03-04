\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Devotion (L.M.)
  }
  composer = \markup {
    Allen Carden
  }
  tagline = ##f
}

sopranoMusic = {
 \aikenHeads
 \clef treble
 \key c \major
 \autoBeamOff
 \time 4/4
 \relative c'' {
   \set Score.tempoHideNote = ##t \tempo 4 = 120
   
   g2 a4 c a2 g a4 c c2 \bar "||" % \break
   g2 c4 d e2 c d4 a c2~ c2 \bar "||" % \break
   c2 e4 e d2 a c4 a g2\fermata \bar "||" % \break
   g2 a4 c a2 g a4 c c1 \bar "|."
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