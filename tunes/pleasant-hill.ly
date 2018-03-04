\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Pleasant Hill (C.M.D.)
  }
  composer = \markup {
    William Nicholson
  }
  tagline = ##f
}

sopranoMusic = {
 \aikenHeads
 \clef treble
 \key d \major
 \autoBeamOff
 \time 6/4
 \relative c' {
   \set Score.tempoHideNote = ##t \tempo 4 = 120
   
   \repeat volta 2 {
     \partial 2.
     d2. fis2 fis4 fis( e) fis a2 a4 fis2 \bar "||"
     a4 b( a) fis e( d) e d2.
   }
   a'2. d2 d4 a( b) d \time 9/4 fis2 e4 d2. \bar "||"
   a2. \time 6/4 b2 b4 b( a) fis a2. \bar "||"
   a2. b2 b4 b( a) b d2 d4 fis,2 \bar "||"
   a4 b( a) fis e( d) e d2. \bar "|."
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