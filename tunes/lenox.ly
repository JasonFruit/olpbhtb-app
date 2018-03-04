\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Lenox (H.M.)
  }
  composer = \markup {
    J. Edson
  }
  tagline = ##f
}

sopranoMusic = {
 \aikenHeads
 \clef treble
 \key bes \major
 \autoBeamOff
 \time 4/4
 \relative c'' {
   \set Score.tempoHideNote = ##t \tempo 4 = 120
   
   \partial 2
   bes2 bes4 bes f g f2 \bar "||"
   f2 bes4 c d c bes2 \bar "||"
   bes2 d4 f d bes c2 \bar "||"
   c2 d4 bes c a bes2 \bar "||" \break
   f2 bes4 bes bes f g g g \bar "||"
   bes4 c c c d bes bes bes \bar "||"
   f4 g g g bes c2 a bes \bar "|."
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