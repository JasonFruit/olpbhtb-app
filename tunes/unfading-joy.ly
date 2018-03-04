\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Unfading Joy (P.M.)
  }
  composer = \markup {
    
  }
  tagline = ##f
}

sopranoMusic = {
  \aikenHeads
  \clef treble
  \key f \major
  \autoBeamOff
  \time 2/4
  \relative c' {
    \set Score.tempoHideNote = ##t \tempo 4 = 72
    
    \partial 4
    f8 g a4 a8 g a c c 
    f, a4 a8. g16 f4 \bar "||"
    f8 g a4 a8 g a c c 
    f, a4 a8. g16 f2 \bar "||"
    f'4 f d8 c c4 
    a8 g a c d c c4 \bar "||"
    f4 f d8 c c4 
    a4 a8. g16 f4 \bar "|."
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