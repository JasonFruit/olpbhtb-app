\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Merrick (8.7.8.7.D)
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
    
    \repeat volta 2 {
      a2. fis8[ e] fis4 a2 r4
      cis2. b8[ a] b[ a] fis2 r4 \bar "||"
      a2. fis8[ e] fis4 a2 r4
      cis2. b4 a2. r4^\markup { \small { \smallCaps { "Fine." } } }
    }
    d2.^\markup { \small { \smallCaps { "Refrain:" } } } cis8[ b] cis4 e2 r4
    cis2. b8[ a] b[ a] fis2 r4 \bar "||"
    d'2. cis8[ b] cis4 e2 r4
    cis2. b8[ a] b2. r4^\markup { \small { "D.C. al " \smallCaps { "Fine" } } } \bar "||"
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