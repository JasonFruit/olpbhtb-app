\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Toplady (P.M.)
  }
  composer = \markup {
    Thomas Hastings
  }
  tagline = ##f
}

sopranoMusic = {
  \aikenHeads
  \clef treble
  \key bes \major
  \autoBeamOff
  \time 3/4
  \relative c' {
    \set Score.tempoHideNote = ##t \tempo 4 = 68
    
    \partial 4
    f8. g16 f4. d8 bes'8. g16 f2 \bar "||"
    bes8. c16 d4. c8 bes a bes2 \bar "||"
    a8. bes16 c4. c8 a f bes2 \bar "||"
    a8. bes16 c4. c8 a f bes2 \bar "||"
    f8. g16 f4. d8 bes'8. g16 f2 \bar "||"
    bes8. c16 d4. c8 bes a bes2 \bar "|."
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