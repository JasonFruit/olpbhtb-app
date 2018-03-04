\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Home, Sweet Home (11s)
  }
  composer = \markup {
    Henry Bishop
  }
  tagline = ##f
}

sopranoMusic = {
  \aikenHeads
  \clef treble
  \key es \major
  \autoBeamOff
  \time 4/4
  \relative c' {
    \set Score.tempoHideNote = ##t \tempo 4 = 120
    
    \partial 4
    es4 g2 aes4 aes bes2 g4 bes aes4.( g8) aes4 f g2. \bar "||"
    es4 g2 aes4 aes bes2 g4 bes aes4.( g8) aes4 f es2. \bar "||"
    bes'4 es4.( d8) c4 bes bes2 g4 bes aes4.( g8) aes4 f g2. \bar "||"
    bes4\segno es4.( d8) c4 bes bes2 g4 bes aes4.( g8) aes4 f es2. r4 \bar "|."

    bes'1 \mark \markup { \tiny { \smallCaps "Refrain:" } } aes2( f) es f g2.^\markup { \tiny "D.S."  } \bar "||"

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