\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Land of Rest (C.M.)
  }
  composer = \markup {
    
  }
  tagline = ##f
}

sopranoMusic = {
  \aikenHeadsMinor
  \clef treble
  \key e \minor
  \autoBeamOff
  \time 6/4
  \relative c'' {
    \set Score.tempoHideNote = ##t \tempo 4 = 120
    
    \repeat volta 2 {
      \partial 2.
      b2. b4( a) fis e2 d4 e2 fis4 a( fis) \bar "||"
      a4 b2 d4 b( a) fis e2.
    }
    a2. b2 cis4 d( b) d e2( a,4 fis2) \bar "||"
    a4 b2 cis4 d( b) d e2. \bar "||"
    e2. d4( b) b a2 b4 fis( e) d fis2 \bar "||"
    a4 b2 d4 b4( a) fis e2. \bar "|."
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