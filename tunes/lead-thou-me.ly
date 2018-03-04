\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Lead Thou Me (8.7.8.7. refrain)
  }
  composer = \markup {
    Phoebe Straub
  }
  tagline = ##f
}

sopranoMusic = {
  \aikenHeads
  \clef treble
  \key f \major
  \autoBeamOff
  \time 4/4
  \relative c' {
    \set Score.tempoHideNote = ##t \tempo 4 = 120
    
    f4 f8[ g] a4 c g g8[ a] bes[ a] g4 \bar "||"
    f4 f8[ g] a4 c bes a g2 \bar "||" \break
    f4 f8[ g] a4 c g g8[ a] bes[ a] g4 \bar "||"
    c4 d c f,8[ g] a4 g f2 \bar "||" \break

    bes4^\markup { \small { \smallCaps "Refrain:" } } bes a a g g a2 \bar "||"
    a4 c c8[ bes] a[ g] f4 e f2 \bar "|."
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