\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Converse (8.7.8.7.D)
  }
  composer = \markup {
    Charles Converse
  }
  tagline = ##f
}

sopranoMusic = {
  \aikenHeads
  \clef treble
  \key f \major
  \autoBeamOff
  \time 4/4
  \relative c'' {
    \set Score.tempoHideNote = ##t \tempo 4 = 120
    
    \repeat volta 2 {
      c4. c8 d c a f f2 d4 r \bar "||"
    }
    \alternative {
      {
	c4. f8 a f c' a g2. r4 \bar "||"
      }
      {
	c,4. f8 a g f e f2. r4^\markup { \small { \smallCaps { "Fine." } } } \bar "||"
      }
    }
    g4. fis8 g a bes g a2 c4 r \bar "||"
    d4. d8 c a bes a g2. r4^\markup { \small { "D.C." } } \bar "||"
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