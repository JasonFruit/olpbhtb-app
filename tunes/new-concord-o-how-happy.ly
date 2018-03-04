\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    New Concord (6.6.9.D)
  }
  composer = \markup {
    William Walker
  }
  tagline = ##f
}

sopranoMusic = {
  \aikenHeads
  \clef treble
  \key bes \major
  \autoBeamOff
  \time 4/4
  \relative c' {
    \set Score.tempoHideNote = ##t \tempo 4 = 120
    
    r2 d4 f f2 g4 bes c2 \bar "||"
    d4 c bes2 g8[ f] d4 f2 \bar "||"
    c'4 c d( c) d4 f f2 d4 bes c2^\fermata \bar "||"
    c4 c d( c) d f f2 \bar "||"
    d4 c bes2 g8[ f] d4 f2 \bar "||"
    bes4 c d2 c8[ bes] g4 bes2 f4 g8[ bes]  bes1 \bar "|."
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