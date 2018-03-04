\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Resignation (11.11.11.11.)
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
    
    \partial 2
    a4( cis) b2 b4 a fis8( e4.) d4 e a2 e4 fis e2 \bar "||"
    a4( cis) b2 b4 a fis8( e4.) d4 e a2 e4 fis e2 \bar "||" \break
    a2 b b4 cis d8( b4.) b4 cis e2 e4 cis b2 \bar "||"
    a4( cis) b2 b4 a fis8( e4.) d4 e a2 e4 fis e2 \bar "|."
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