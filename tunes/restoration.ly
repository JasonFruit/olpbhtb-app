\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Restoration (8s,7s)
  }
  composer = \markup {
    
  }
  tagline = ##f
}

sopranoMusic = {
  \aikenHeadsMinor
  \clef treble
  \key a \minor
  \autoBeamOff
  \time 4/4
  \relative c'' {
    \set Score.tempoHideNote = ##t \tempo 4 = 120
    
    a4 a a g8[ a] c4 c a8[ g] e4 \bar "||"
    g4 g a g8[ a] c4 d e2 \bar "||"
    e4 g e8[ d] c4 d e8[ d] c[ a] g4 \bar "||"
    a4 c a8[ g] e4 g g a2 \bar "|."
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