\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Garden Hymn (C.P.M.)
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
  \time 6/4
  \relative c' {
    \set Score.tempoHideNote = ##t \tempo 4 = 120
    
    \partial 2.
    d2( e4) g2 g4 g( a) b d2 b4 d2. \bar "||"
    e2( d4) b2 b4 g2 a4 b( a) g e2. \bar "||" \break
    d2( e4) g2 g4 g( a) b d2. \bar "||"
    e2( d4) b2 b4 a( g) a g2. \bar "||" \break
    d'2. e2 e4 e2 d4 e2 d4 g2. \bar "||"
    g2( e4) d2 b4 g2 a4 b( a) g e2. \bar "||" \break
    d2( e4) g2 g4 g( a) b d2. \bar "||"
    e2( d4) b2 b4 a( g) a g2. \bar "|."
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