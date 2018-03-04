\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    The Child of Grace (C.M.D.)
  }
  composer = \markup {
    Elisha J. King
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
    
    r2 a2 g4 e c'2 b a8[ g] e4 g2 \bar "||"
    a2 e4 d e g a2 \bar "||"
    a2 g4 e c'2 b a8[ g] e4 g2 \bar "||"
    a2 e4 d e g a2 \bar "||"
    a2 c4 d e2 d4( c) d e d2 \bar "||"
    e2 c4 a c e d2 \bar "||"
    e2 c4 a c2 b a8[ g] e4 g2 \bar "||"
    a2 e4 d e g a1 \bar "|."
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