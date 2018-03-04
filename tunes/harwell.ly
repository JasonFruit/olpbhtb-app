\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Harwell (8s, 7s)
  }
  composer = \markup {
    Lowell Mason
  }
  tagline = ##f
}

sopranoMusic = {
 \aikenHeads
 \clef treble
 \key g \major
 \autoBeamOff
 \time 3/4
 \relative c' {
   \set Score.tempoHideNote = ##t \tempo 4 = 120
   
   \partial 4
   \repeat volta 2 {
     d8. d16 g4. d8 g b a4 a \bar "||"
     d8. d16 d4. g,8 b a g2^\markup { \tiny { \smallCaps "Fine." } }
   } \break
   r4 c8. b16 a8 b c d c4( a) \bar "||"
   r4 d8. c16 b8 c d e d4^\markup { \tiny { \smallCaps "D.S. al Fine" } }( b) \bar "||" 
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