\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Cook (Cookham) (7s)
  }
  composer = \markup {
    
  }
  tagline = ##f
}

sopranoMusic = {
 \aikenHeads
 \clef treble
 \key g \major
 \autoBeamOff
 \time 6/4
 \relative c'' {
   \set Score.tempoHideNote = ##t \tempo 4 = 120
   
   g2 a4 g2 a4 b2 a8[ c] b2. \bar "||"
   g2 b4 d2 g,4 a2 b4 a2. \bar "||"
   d2 b4 e2 d4 b( a) g d'2. \bar "||"
   g,2 b4 d2 e8[ d] b2 a4 g2. \bar "|."
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