\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Loving-Kindness (L.M.)
  }
  composer = \markup {
    William Caldwell
  }
  tagline = ##f
}

sopranoMusic = {
  \aikenHeads
  \clef treble
  \key g \major
  \autoBeamOff
  \time 4/4
  \relative c' {
    \set Score.tempoHideNote = ##t \tempo 4 = 120
    
    \partial 4
    d4 g g g8[ a] b[ g] a4 a a \bar "||"
    b8[ c] d4. c8 b[ a d] b g4 a g^\fermata \bar "||"
    b8[ c] d4 d d8[ c] b4 c c c8[ b]  \bar "||"
    a8[ c] d4. c8 b[ g d'] b g4 a g r \bar "||"
    a4. b8 a[ fis] d4 c'4. d8 c[ b] a \bar "||"
    b16[ c] d4. c8 b[ g d'] b g4 a g^\fermata \bar "|."
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