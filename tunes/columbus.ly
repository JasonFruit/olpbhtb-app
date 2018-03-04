\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Columbus (C.M.D.)
  }
  composer = \markup {
    
  }
  tagline = ##f
}

sopranoMusic = {
  \aikenHeadsMinor
  \clef treble
  \key fis \minor
  \autoBeamOff
  \time 6/4
  \relative c'' {
    \set Score.tempoHideNote = ##t \tempo 4 = 120
    
    r2.
    \repeat volta 2 {
      a2. cis2 cis4 cis( b) a cis2 cis4 b( a) \bar "||"
      fis a( b) cis b( a) fis fis2. }
    cis' e2 cis4 e2. fis cis2 b4 cis2. \bar "||"
    cis2. fis2 fis4 fis( e) cis e2. \bar "||"
    cis2. e2 cis4 e2. fis2. cis2 cis4 b( a) \bar "||"
    fis4 a( b) cis b( a) fis fis2.^\fermata \bar "|."
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