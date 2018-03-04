\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Mercy Seat (L.M.)
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
    
    \partial 4
    e4 a4. a8 a4 a cis4. b8 b[ a] \bar "||"
    a4 b cis b a cis a fis8[ e] \bar "||"
    e4 a4. a8 a4 a cis4. b8 b[ a] \bar "||"
    a4 b cis b a cis a fis8[ e] \bar "||"
    e4 a4. a8 a4 a b2. b4 a2. \bar "|."
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