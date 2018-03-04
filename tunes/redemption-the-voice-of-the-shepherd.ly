\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Redemption (11.11.11.11.)
  }
  composer = \markup {
    Jeremiah Ingalls
  }
  tagline = ##f
}

sopranoMusic = {
  \aikenHeads
  \clef treble
  \key g \major
  \autoBeamOff
  \time 4/4
  \relative c' {
    \set Score.tempoHideNote = ##t \tempo 4 = 120
    
    \partial 2 d4( e) g2 b4 g e2 d4 b d4.( e8) g4 g g2 \bar "||"
    d4( e) g2 b4 c d2 d4 e d2 b4 g a2. \bar "||"
    b4 c2 e4 c b4.( c8) d4 b a( g) a b a2 \bar "||"
    d,4( e) g2 b4 g e2 d4 b d4.( e8) g4 g g2 \bar "|."
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