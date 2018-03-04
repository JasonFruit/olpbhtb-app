\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    The Rock of Our Salvation (P.M.)
  }
  composer = \markup {
    Joshua Leavitt
  }
  tagline = ##f
}

sopranoMusic = {
  \aikenHeads
  \clef treble
  \key g \major
  \autoBeamOff
  \time 2/4
  \relative c'' {
    \set Score.tempoHideNote = ##t \tempo 4 = 80
    
    d8 d b b g4 d c'8. b16 c8. a16 b4 r \bar "||"
    d8 d b b g4 d c'8. b16 c8. a16 g4 r \bar "||"
    g4 g8. g16 b4 r d,4 d8. d16 g4 r \bar "||"
    b4 a8 b d( c4) b8 a2 g4 r \bar "||"
    d'4 b8 g \noBreak a4 r8 d8 e[ d] b[ g] a2 \bar "||"
    r8 g a b d( c4) b8 a2 g4 r \bar "|."
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