\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Time is Winging Us Away (Refrain, 7.6.7.6)
  }
  composer = \markup {
    
  }
  tagline = ##f
}

sopranoMusic = {
  \aikenHeads
  \clef treble
  \key g \major
  \autoBeamOff
  \time 3/2
  \relative c'' {
    \set Score.tempoHideNote = ##t \tempo 4 = 120
    
    g2.^\markup { \smallCaps "Refrain:" } e4 d e g b d2 \bar "||"
    e4( d) b2. g4 a g e1 r2 \bar "||" \break
    g2. e4 d e g b d2 \bar "||"
    e4( d) b2. g4 b a g1 r2 \bar "||" \break
    d'2. e4 d b d e g2 \bar "||"
    e4 d b2. g4 a g e1 r2 \bar "||" \break
    g2. e4 d e g b d2 \bar "||"
    e4( d) b2. g4 b a g1 r2 \bar "|."
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