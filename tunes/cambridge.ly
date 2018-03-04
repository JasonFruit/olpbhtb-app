\version "2.18.2"

#(set-global-staff-size 14)

\header {
  title=\markup {
    Cambridge (S.M.)
  }
  composer = \markup {
    Ralph Harrison
  }
  tagline = ##f
}

sopranoMusic = {
 \aikenHeads
 \clef treble
 \key aes \major
 \autoBeamOff
 \time 2/2
 \relative c'' {
   \set Score.tempoHideNote = ##t \tempo 4 = 120
   
   \partial 4
   aes4 c2 bes4( aes) bes2 aes4( g) aes2. \bar "||"
   bes4 c2 es des c bes2. \bar "||"
   es,4 aes2 aes4( g) f2 f bes bes4( aes) g2. \bar "||"
   es4 f2 des' c bes aes2. \bar "|."
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