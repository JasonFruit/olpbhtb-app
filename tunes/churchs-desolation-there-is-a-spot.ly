\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Church’s Desolation (8.7.8.7.D peculiar)
  }
  composer = \markup {
    J. T. White
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
    
    f2 f4 g bes2 g4( f) g4 bes c2 \bar "||"
    bes2 d4 d c2 bes g4 f2.  \bar "||"
    f2 f4 g bes2 g4( f) g4 bes c2 \bar "||"
    bes2 d4 d c2 bes g4 f2.  \bar "||"
    bes2 c4 d f2 f d4 c bes2 \bar "||"
    bes2 c4 d f2 f d4 c2. \bar "||"
    bes2 c4 d f2 f d4 c bes2 \bar "||"
    bes2 d4 d c2 bes g4 f2. \bar "|."
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