\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Atwater (C.M.)
  }
  composer = \markup {
    
  }
  tagline = ##f
}

sopranoMusic = {
  \aikenHeads
  \clef treble
  \key bes \major
  \autoBeamOff
  \time 6/4
  \relative c' {
    \set Score.tempoHideNote = ##t \tempo 4 = 120
    
    \partial 4
    f4 bes2 g4 g( f) g bes2 g4 g( f) \bar "||"
    g4 bes2 bes4 c( bes) c d2.~ d2 \bar "||" \break
    bes8[ c] d2 d4 d( c) bes g2 g4 bes2 \bar "||"
    g4 f2 f4 f( g) a bes2.~ bes2 \bar "||"\break
    es4 d2 d4 d( c) bes f'2. \bar "||"
    es2. d2 d4 d( c) bes c2.~ c2 \bar "||" \break
    bes8[ c] d2 d4 d( c) bes4 g2 g4 bes2 \bar "||"
    g4 f2 f4 f( g) a bes2.~ bes2 \bar "|."
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