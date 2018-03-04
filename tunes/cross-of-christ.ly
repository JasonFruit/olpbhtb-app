\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    The Cross of Christ (C.M.D.)
  }
  composer = \markup {
    L.P. Breedlove
  }
  tagline = ##f
}

sopranoMusic = {
  \aikenHeadsMinor
  \clef treble
  \key g \minor
  \autoBeamOff
  \time 4/4
  \relative c'' {
    \set Score.tempoHideNote = ##t \tempo 4 = 120
    
    \partial 2
    g2 bes4 d a c8[ bes] g4 g8[ f] d4 \bar "||"
    f8[ g] a4 c d a g2 \bar "||"
    g2 bes4 d a c8[ bes] g4 g8[ f] d4 \bar "||"
    f8[ g] a4 c d a g2 \bar "||"

    c2 d4 c f e d a g \bar "||"
    c d c f e d2 \bar "||"
    g,2 bes4 d a c8[ bes] g4 g8[ f] d4 \bar "||"
    f8[ g] a4 c d a g2 \bar "|."
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