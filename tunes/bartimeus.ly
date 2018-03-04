\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Bartimeus (8s,7s)
  }
  composer = \markup {
    Stephen Jenks
  }
  tagline = ##f
}

sopranoMusic = {
  \aikenHeads
  \clef treble
  \key f \major
  \autoBeamOff
  \time 6/4
  \relative c' {
    \set Score.tempoHideNote = ##t \tempo 4 = 120
    
    f2 g4 a2 g4 c2 a4 g f2 \bar "||"
    c'2 d8[ e] f2 d4 c2 a4 g2 r4 \bar "||"
    c2 d8[ e] f2 d4 c2 a4 g f2 \bar "||"
    a2 g4 c2 d8[ bes] a2 g4 f2. \bar "|."
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