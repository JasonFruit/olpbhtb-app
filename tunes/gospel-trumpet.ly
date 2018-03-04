\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Gospel Trumpet (7s,6s)
  }
  composer = \markup {
    
  }
  tagline = ##f
}

sopranoMusic = {
  \aikenHeads
  \clef treble
  \key a \major
  \autoBeamOff
  \time 4/4
  \relative c' {
    \set Score.tempoHideNote = ##t \tempo 4 = 120
    
    \repeat volta 2 {
      \partial 4 e4 a4. a8 a4 cis a4.( fis8) e4 \bar "||"
      cis4 e4. e8 fis4 a a2.
    }
    a4 d4. d8 cis4 d e4.( cis8) e4 \bar "||"
    cis8[ b] a4. a8 a[ b] cis4 e2. \bar "||"
    cis4 e4. fis8 cis4 b a4.( fis8) e4 \bar "||"
    cis4 e4. e8 fis4 a a2. \bar "|."
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