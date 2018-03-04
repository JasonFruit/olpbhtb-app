\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Prosperity (C.M.D.)
  }
  composer = \markup {
    E. Sosebee
  }
  tagline = ##f
}

sopranoMusic = {
  \aikenHeads
  \clef treble
  \key a \major
  \autoBeamOff
  \time 2/4
  \relative c'' {
    \set Score.tempoHideNote = ##t \tempo 4 = 120
    
    a2 cis4 a fis a e fis8[ gis] a2 \bar "||"
    b4.( cis8) b4 a cis b a2 \bar "||"
    a2 cis4 a fis a e fis8[ gis] a2 \bar "||"
    b4.( cis8) b4 a cis b a2 \bar "||"
    a2 a4 cis e2 e fis4 fis e2 \bar "||"
    e4.( fis8) e4 cis a cis b2 \bar "||"
    a2 cis4 a fis a e fis8[ gis] a2 \bar "||"
    b4.( cis8) b4 a cis b a2 \bar "|."
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