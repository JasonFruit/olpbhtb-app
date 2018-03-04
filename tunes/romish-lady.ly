\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    The Romish Lady (7.6.7.6.D)
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
  \relative c'' {
    \set Score.tempoHideNote = ##t \tempo 4 = 120
    
    a2 e4. fis8 e4 cis e( fis) a2 a cis4 cis b b8[ a] fis1 \bar "||"
    a2 e4. fis8 e4 cis e( fis) a2 a cis4 cis b b a1 \bar "||"
    a2 cis4 b cis e b4.( cis8) b2 cis4.( b8) a4. b8 a4 fis8[ e] fis1 \bar "||"
    a2 e4. fis8 e4 cis e( fis) a2 a cis4 cis b b a1 \bar "|."
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