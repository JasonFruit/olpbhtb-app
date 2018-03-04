\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Forest (L.M.)
  }
  composer = \markup {
    Amzi Chapin
  }
  tagline = ##f
}

sopranoMusic = {
 \aikenHeads
 \clef treble
 \key bes \major
 \autoBeamOff
 \time 3/2
 \relative c'' {
   \set Score.tempoHideNote = ##t \tempo 4 = 120
   
   \partial 2
   bes2 g4 f bes2 bes d4 c bes2 \bar "||"
   bes2 d4 f d2 bes c4 d c2 \bar "||"
   bes2 d4 f d2 bes d4 bes g2 \bar "||"
   c2 bes4 g f2 bes d4 c bes2  \bar "|."
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