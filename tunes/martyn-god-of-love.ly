\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Martyn (7s)
  }
  composer = \markup {
    S.B. Marsh
  }
  tagline = ##f
}

sopranoMusic = {
  \aikenHeads
  \clef treble
  \key f \major
  \autoBeamOff
  \time 6/8
  \relative c'' {
    \set Score.tempoHideNote = ##t \tempo 4 = 120
    
    a4 a8 a4 f8 g4 g8 g4 r8 \bar "||"
    a4 a8 c4 bes8 a4. g f~ f4 r8 \bar "||"
    a4 a8 a4 f8 g4 g8 g4 r8 \bar "||"
    a4 a8 c4 bes8 a4. g f~ f4 r8 \bar "||"
    c'4 c8 c4 c8 d4. d c~ c4 r8 \bar "||"
    c4 c8 c4 c8 d4. d c~ c4 r8 \bar "||"
    a4 a8 a4 f8 g4 g8 g4 r8 \bar "||"
    a4 a8 c4 bes8 a4. g f~ f4 r8 \bar "|."
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